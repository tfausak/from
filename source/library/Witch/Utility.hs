{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Witch.Utility where

import qualified Control.Exception as Exception
import qualified Data.Coerce as Coerce
import qualified Data.Typeable as Typeable
import qualified GHC.Stack as Stack
import qualified Witch.From as From
import qualified Witch.TryFrom as TryFrom
import qualified Witch.TryFromException as TryFromException

-- | This is the same as 'id'. This can be an ergonomic way to pin down a
-- polymorphic type in a function pipeline. For example:
--
-- > -- Avoid this:
-- > f . (\ x -> x :: Int) . g
-- >
-- > -- Prefer this:
-- > f . as @Int . g
as :: forall source. source -> source
as = id

-- | This is the same as 'From.from' except that the type variables are in the
-- opposite order.
--
-- > -- Avoid this:
-- > from x :: t
-- >
-- > -- Prefer this:
-- > into @t x
into :: forall target source. (From.From source target) => source -> target
into = From.from

-- | This function converts from some @source@ type into some @target@ type,
-- applies the given function, then converts back into the @source@ type. This
-- is useful when you have two types that are isomorphic but some function
-- that only works with one of them.
--
-- > -- Avoid this:
-- > from @t . f . into @t
-- >
-- > -- Prefer this:
-- > over @t f
over ::
  forall target source.
  (From.From source target, From.From target source) =>
  (target -> target) ->
  source ->
  source
over f = From.from . f . From.from

-- | This function first converts from some @source@ type into some @through@
-- type, and then converts that into some @target@ type. Usually this is used
-- when writing 'From.From' instances. Sometimes this can be used to work
-- around the lack of an instance that should probably exist.
--
-- > -- Avoid this:
-- > from @u . into @u
-- >
-- > -- Prefer this:
-- > via @u
via ::
  forall through source target.
  (From.From source through, From.From through target) =>
  source ->
  target
via = From.from . (\x -> x :: through) . From.from

-- | This is the same as 'TryFrom.tryFrom' except that the type variables are
-- in the opposite order.
--
-- > -- Avoid this:
-- > tryFrom x :: Either (TryFromException s t) t
-- >
-- > -- Prefer this:
-- > tryInto @t x
tryInto ::
  forall target source.
  (TryFrom.TryFrom source target) =>
  source ->
  Either (TryFromException.TryFromException source target) target
tryInto = TryFrom.tryFrom

-- | This is similar to 'via' except that it works with 'TryFrom.TryFrom'
-- instances instead. This function is especially convenient because juggling
-- the types in the 'TryFromException.TryFromException' can be tedious.
--
-- > -- Avoid this:
-- > case tryInto @u x of
-- >   Left (TryFromException _ e) -> Left $ TryFromException x e
-- >   Right y -> case tryFrom @u y of
-- >     Left (TryFromException _ e) -> Left $ TryFromException x e
-- >     Right z -> Right z
-- >
-- > -- Prefer this:
-- > tryVia @u
tryVia ::
  forall through source target.
  (TryFrom.TryFrom source through, TryFrom.TryFrom through target) =>
  source ->
  Either (TryFromException.TryFromException source target) target
tryVia s = case TryFrom.tryFrom s of
  Left e -> Left $ withTarget e
  Right u -> case TryFrom.tryFrom (u :: through) of
    Left e -> Left $ withSource s e
    Right t -> Right t

-- | This function can be used to implement 'TryFrom.tryFrom' with a function
-- that returns 'Maybe'. For example:
--
-- > -- Avoid this:
-- > tryFrom s = case f s of
-- >   Nothing -> Left $ TryFromException s Nothing
-- >   Just t -> Right t
-- >
-- > -- Prefer this:
-- > tryFrom = maybeTryFrom f
maybeTryFrom ::
  (source -> Maybe target) ->
  source ->
  Either (TryFromException.TryFromException source target) target
maybeTryFrom f s = case f s of
  Nothing -> Left $ TryFromException.TryFromException s Nothing
  Just t -> Right t

-- | This function can be used to implement 'TryFrom.tryFrom' with a function
-- that returns 'Either'. For example:
--
-- > -- Avoid this:
-- > tryFrom s = case f s of
-- >   Left e -> Left . TryFromException s . Just $ toException e
-- >   Right t -> Right t
-- >
-- > -- Prefer this:
-- > tryFrom = eitherTryFrom f
eitherTryFrom ::
  (Exception.Exception exception) =>
  (source -> Either exception target) ->
  source ->
  Either (TryFromException.TryFromException source target) target
eitherTryFrom f s = case f s of
  Left e ->
    Left . TryFromException.TryFromException s . Just $ Exception.toException e
  Right t -> Right t

-- | This function is like 'TryFrom.tryFrom' except that it will throw an
-- impure exception if the conversion fails.
--
-- > -- Avoid this:
-- > either throw id . tryFrom @s
-- >
-- > -- Prefer this:
-- > unsafeFrom @s
unsafeFrom ::
  forall source target.
  ( Stack.HasCallStack,
    TryFrom.TryFrom source target,
    Show source,
    Typeable.Typeable source,
    Typeable.Typeable target
  ) =>
  source ->
  target
unsafeFrom = either Exception.throw id . TryFrom.tryFrom

-- | This function is like 'tryInto' except that it will throw an impure
-- exception if the conversion fails.
--
-- > -- Avoid this:
-- > either throw id . tryInto @t
-- >
-- > -- Prefer this:
-- > unsafeInto @t
unsafeInto ::
  forall target source.
  ( Stack.HasCallStack,
    TryFrom.TryFrom source target,
    Show source,
    Typeable.Typeable source,
    Typeable.Typeable target
  ) =>
  source ->
  target
unsafeInto = unsafeFrom

withSource ::
  newSource ->
  TryFromException.TryFromException oldSource target ->
  TryFromException.TryFromException newSource target
withSource x (TryFromException.TryFromException _ e) =
  TryFromException.TryFromException x e

withTarget ::
  forall newTarget source oldTarget.
  TryFromException.TryFromException source oldTarget ->
  TryFromException.TryFromException source newTarget
withTarget = Coerce.coerce
