{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Witch.Instances where

import qualified Control.Exception as Exception
import qualified Control.Monad as Monad
import qualified Data.Bits as Bits
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString.Lazy as LazyByteString
import qualified Data.ByteString.Lazy.Char8 as LazyChar8
import qualified Data.ByteString.Short as ShortByteString
import qualified Data.Char as Char
import qualified Data.Complex as Complex
import qualified Data.Fixed as Fixed
import qualified Data.Foldable as Foldable
import qualified Data.Int as Int
import qualified Data.IntMap as IntMap
import qualified Data.IntSet as IntSet
import qualified Data.List as List
import qualified Data.List.NonEmpty as NonEmpty
import qualified Data.Map as Map
import qualified Data.Ratio as Ratio
import qualified Data.Sequence as Seq
import qualified Data.Set as Set
import qualified Data.Tagged as Tagged
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Data.Text.Encoding.Error as Text
import qualified Data.Text.Lazy as LazyText
import qualified Data.Text.Lazy.Encoding as LazyText
import qualified Data.Time as Time
import qualified Data.Time.Clock.POSIX as Time
import qualified Data.Time.Clock.System as Time
import qualified Data.Time.Clock.TAI as Time
import qualified Data.Word as Word
import qualified GHC.Float as Float
import qualified Numeric
import qualified Numeric.Natural as Natural
import qualified System.IO.Unsafe as Unsafe
import qualified Witch.Encoding as Encoding
import qualified Witch.From as From
import qualified Witch.TryFrom as TryFrom
import qualified Witch.TryFromException as TryFromException
import qualified Witch.Utility as Utility

-- | Uses 'id'.
instance From.From a a where
  from = id

-- Int8

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Int.Int16 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Int.Int32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Int.Int64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Int where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Integer where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int8 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int8 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int8 Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int8 Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int8 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral' when the input is not negative.
instance TryFrom.TryFrom Int.Int8 Natural.Natural where
  tryFrom = Utility.eitherTryFrom fromNonNegativeIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Float where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int8 Double where
  from = fromIntegral

-- Int16

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Int.Int32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Int.Int64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Int where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Integer where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int16 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral' when the input is not negative.
instance TryFrom.TryFrom Int.Int16 Natural.Natural where
  tryFrom = Utility.eitherTryFrom fromNonNegativeIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Float where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int.Int16 Double where
  from = fromIntegral

-- Int32

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Int.Int32 Int.Int64 where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Int.Int32 Integer where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int32 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral' when the input is not negative.
instance TryFrom.TryFrom Int.Int32 Natural.Natural where
  tryFrom = Utility.eitherTryFrom fromNonNegativeIntegral

-- | TODO
instance TryFrom.TryFrom Int.Int32 Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | Uses 'fromIntegral'.
instance From.From Int.Int32 Double where
  from = fromIntegral

-- Int64

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Int.Int64 Integer where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int.Int64 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral' when the input is not negative.
instance TryFrom.TryFrom Int.Int64 Natural.Natural where
  -- This should use @eitherTryFrom fromNonNegativeIntegral@, but that causes
  -- a bug in GHC 9.0.1.
  -- https://mail.haskell.org/pipermail/haskell-cafe/2021-March/133540.html
  tryFrom =
    Utility.eitherTryFrom $ \s -> TryFrom.tryFrom (From.from s :: Integer)

-- | TODO
instance TryFrom.TryFrom Int.Int64 Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | TODO
instance TryFrom.TryFrom Int.Int64 Double where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- Int

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Int Int.Int64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Int Integer where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Int Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral' when the input is not negative.
instance TryFrom.TryFrom Int Natural.Natural where
  tryFrom = Utility.eitherTryFrom fromNonNegativeIntegral

-- | TODO
instance TryFrom.TryFrom Int Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | TODO
instance TryFrom.TryFrom Int Double where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- Integer

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Int.Int64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Integer Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromInteger' when the input is not negative.
instance TryFrom.TryFrom Integer Natural.Natural where
  -- This should use @eitherTryFrom fromNonNegativeIntegral@, but that causes
  -- a bug in GHC 9.0.1. By inlining @fromNonNegativeIntegral@ and replacing
  -- @fromIntegral@ with @fromInteger@, we can work around the bug.
  -- https://mail.haskell.org/pipermail/haskell-cafe/2021-March/133540.html
  tryFrom = Utility.eitherTryFrom $
    \s -> if s < 0 then Left Exception.Underflow else Right $ fromInteger s

-- | TODO
instance TryFrom.TryFrom Integer Float where
  tryFrom = Utility.eitherTryFrom $ \s -> case fromInteger s of
    t | s == truncate t -> Right t
    _ -> Left Exception.LossOfPrecision

-- | TODO
instance TryFrom.TryFrom Integer Double where
  tryFrom = Utility.eitherTryFrom $ \s -> case fromInteger s of
    t | s == truncate t -> Right t
    _ -> Left Exception.LossOfPrecision

-- Word8

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Word.Word16 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Word.Word32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Word.Word64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Word where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Natural.Natural where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word8 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Int.Int16 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Int.Int32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Int.Int64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Int where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Integer where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Float where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word8 Double where
  from = fromIntegral

-- Word16

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word16 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Word.Word32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Word.Word64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Word where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Natural.Natural where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word16 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word16 Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Int.Int32 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Int.Int64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Int where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Integer where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Float where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word.Word16 Double where
  from = fromIntegral

-- Word32

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word32 Word.Word64 where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word32 Natural.Natural where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word32 Int.Int64 where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word32 Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word32 Integer where
  from = fromIntegral

-- | TODO
instance TryFrom.TryFrom Word.Word32 Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | Uses 'fromIntegral'.
instance From.From Word.Word32 Double where
  from = fromIntegral

-- Word64

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word64 Natural.Natural where
  -- This should use @fromIntegral@, but that causes a bug in GHC 9.0.1.
  -- https://mail.haskell.org/pipermail/haskell-cafe/2021-March/133540.html
  from s = Utility.unsafeFrom (From.from s :: Integer)

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Int.Int64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word.Word64 Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word.Word64 Integer where
  from = fromIntegral

-- | TODO
instance TryFrom.TryFrom Word.Word64 Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | TODO
instance TryFrom.TryFrom Word.Word64 Double where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- Word

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word Word.Word64 where
  from = fromIntegral

-- | Uses 'fromIntegral'.
instance From.From Word Natural.Natural where
  from = fromIntegral

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Int.Int64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Word Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Word Integer where
  from = fromIntegral

-- | TODO
instance TryFrom.TryFrom Word Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | TODO
instance TryFrom.TryFrom Word Double where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- Natural

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Word.Word8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Word.Word16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Word.Word32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Word.Word64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Word where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Int.Int8 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Int.Int16 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Int.Int32 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Int.Int64 where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'Bits.toIntegralSized'.
instance TryFrom.TryFrom Natural.Natural Int where
  tryFrom = Utility.maybeTryFrom Bits.toIntegralSized

-- | Uses 'fromIntegral'.
instance From.From Natural.Natural Integer where
  from = fromIntegral

-- | TODO
instance TryFrom.TryFrom Natural.Natural Float where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- | TODO
instance TryFrom.TryFrom Natural.Natural Double where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom @Integer . From.from

-- Float

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Int.Int8 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Int.Int16 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Int.Int32 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Int.Int64 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Int where
  tryFrom = Utility.tryVia @Integer

-- | TODO
instance TryFrom.TryFrom Float Integer where
  tryFrom = Utility.tryVia @Rational

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Word.Word8 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Word.Word16 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Word.Word32 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Word.Word64 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Word where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Float Natural.Natural where
  tryFrom = Utility.tryVia @Integer

-- | Uses 'Numeric.floatToDigits' when the input is not NaN or infinity.
instance TryFrom.TryFrom Float Rational where
  tryFrom = Utility.eitherTryFrom realFloatToRational

-- | Uses 'Float.float2Double'.
instance From.From Float Double where
  from = Float.float2Double

-- Double

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Int.Int8 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Int.Int16 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Int.Int32 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Int.Int64 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Int where
  tryFrom = Utility.tryVia @Integer

-- | TODO
instance TryFrom.TryFrom Double Integer where
  tryFrom = Utility.tryVia @Rational

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Word.Word8 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Word.Word16 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Word.Word32 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Word.Word64 where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Word where
  tryFrom = Utility.tryVia @Integer

-- | Converts via 'Integer'.
instance TryFrom.TryFrom Double Natural.Natural where
  tryFrom = Utility.tryVia @Integer

-- | Uses 'Numeric.floatToDigits' when the input is not NaN or infinity.
instance TryFrom.TryFrom Double Rational where
  tryFrom = Utility.eitherTryFrom realFloatToRational

-- | Uses 'Float.double2Float'. This necessarily loses some precision.
instance From.From Double Float where
  from = Float.double2Float

-- Ratio

-- | Uses '(Ratio.%)' with a denominator of 1.
instance (Integral a) => From.From a (Ratio.Ratio a) where
  from = (Ratio.% 1)

-- | Uses 'Ratio.numerator' when the denominator is 1.
instance (Eq a, Num a) => TryFrom.TryFrom (Ratio.Ratio a) a where
  tryFrom = Utility.eitherTryFrom $ \s ->
    if Ratio.denominator s == 1
      then Right $ Ratio.numerator s
      else Left Exception.LossOfPrecision

-- | Uses 'fromRational'. This necessarily loses some precision.
instance From.From Rational Float where
  from = fromRational

-- | Uses 'fromRational'. This necessarily loses some precision.
instance From.From Rational Double where
  from = fromRational

-- | Uses `fromRational` as long as there isn't a loss of precision.
instance (Fixed.HasResolution a) => TryFrom.TryFrom Rational (Fixed.Fixed a) where
  tryFrom = Utility.eitherTryFrom $ \s ->
    let t :: Fixed.Fixed a
        t = fromRational s
     in if toRational t == s then Right t else Left Exception.LossOfPrecision

-- Fixed

-- | Uses 'Fixed.MkFixed'. This means @from \@Integer \@Centi 2@ is @0.02@
-- rather than @2.00@.
instance From.From Integer (Fixed.Fixed a) where
  from = Fixed.MkFixed

-- | Uses 'Fixed.MkFixed'. This means @from \@Centi \@Integer 3.00@ is @300@
-- rather than @3@.
instance From.From (Fixed.Fixed a) Integer where
  from (Fixed.MkFixed t) = t

-- | Uses 'toRational'.
instance (Fixed.HasResolution a) => From.From (Fixed.Fixed a) Rational where
  from = toRational

-- Complex

-- | Uses '(Complex.:+)' with an imaginary part of 0.
instance (Num a) => From.From a (Complex.Complex a) where
  from = (Complex.:+ 0)

-- | Uses 'Complex.realPart' when the imaginary part is 0.
instance (Eq a, Num a) => TryFrom.TryFrom (Complex.Complex a) a where
  tryFrom = Utility.eitherTryFrom $ \s ->
    if Complex.imagPart s == 0
      then Right $ Complex.realPart s
      else Left Exception.LossOfPrecision

-- NonEmpty

-- | Uses 'NonEmpty.nonEmpty'.
instance TryFrom.TryFrom [a] (NonEmpty.NonEmpty a) where
  tryFrom = Utility.maybeTryFrom NonEmpty.nonEmpty

-- | Uses 'NonEmpty.toList'.
instance From.From (NonEmpty.NonEmpty a) [a] where
  from = NonEmpty.toList

-- Set

-- | Uses 'Set.fromList'.
instance (Ord a) => From.From [a] (Set.Set a) where
  from = Set.fromList

-- | Uses 'Set.toAscList'.
instance From.From (Set.Set a) [a] where
  from = Set.toAscList

-- IntSet

-- | Uses 'IntSet.fromList'.
instance From.From [Int] IntSet.IntSet where
  from = IntSet.fromList

-- | Uses 'IntSet.toAscList'.
instance From.From IntSet.IntSet [Int] where
  from = IntSet.toAscList

-- Map

-- | Uses 'Map.fromList'. If there are duplicate keys, later values will
-- overwrite earlier ones.
instance (Ord k) => From.From [(k, v)] (Map.Map k v) where
  from = Map.fromList

-- | Uses 'Map.toAscList'.
instance From.From (Map.Map k v) [(k, v)] where
  from = Map.toAscList

-- IntMap

-- | Uses 'IntMap.fromList'. If there are duplicate keys, later values will
-- overwrite earlier ones.
instance From.From [(Int, v)] (IntMap.IntMap v) where
  from = IntMap.fromList

-- | Uses 'IntMap.toAscList'.
instance From.From (IntMap.IntMap v) [(Int, v)] where
  from = IntMap.toAscList

-- Seq

-- | Uses 'Seq.fromList'.
instance From.From [a] (Seq.Seq a) where
  from = Seq.fromList

-- | Uses 'Foldable.toList'.
instance From.From (Seq.Seq a) [a] where
  from = Foldable.toList

-- ByteString

-- | Uses 'ByteString.pack'.
instance From.From [Word.Word8] ByteString.ByteString where
  from = ByteString.pack

-- | Uses 'ByteString.unpack'.
instance From.From ByteString.ByteString [Word.Word8] where
  from = ByteString.unpack

-- | Uses 'LazyByteString.fromStrict'.
instance From.From ByteString.ByteString LazyByteString.ByteString where
  from = LazyByteString.fromStrict

-- | Uses 'ShortByteString.toShort'.
instance From.From ByteString.ByteString ShortByteString.ShortByteString where
  from = ShortByteString.toShort

-- LazyByteString

-- | Uses 'LazyByteString.pack'.
instance From.From [Word.Word8] LazyByteString.ByteString where
  from = LazyByteString.pack

-- | Uses 'LazyByteString.unpack'.
instance From.From LazyByteString.ByteString [Word.Word8] where
  from = LazyByteString.unpack

-- | Uses 'LazyByteString.toStrict'.
instance From.From LazyByteString.ByteString ByteString.ByteString where
  from = LazyByteString.toStrict

-- ShortByteString

-- | Uses 'ShortByteString.pack'.
instance From.From [Word.Word8] ShortByteString.ShortByteString where
  from = ShortByteString.pack

-- | Uses 'ShortByteString.unpack'.
instance From.From ShortByteString.ShortByteString [Word.Word8] where
  from = ShortByteString.unpack

-- | Uses 'ShortByteString.fromShort'.
instance From.From ShortByteString.ShortByteString ByteString.ByteString where
  from = ShortByteString.fromShort

-- Text

-- | Uses 'LazyText.fromStrict'.
instance From.From Text.Text LazyText.Text where
  from = LazyText.fromStrict

-- LazyText

-- | Uses 'LazyText.toStrict'.
instance From.From LazyText.Text Text.Text where
  from = LazyText.toStrict

-- String

-- | Uses 'Text.pack'. Some 'Char' values cannot be represented in 'Text.Text'
-- and will be replaced with @'\\xFFFD'@.
instance From.From String Text.Text where
  from = Text.pack

-- | Uses 'Text.unpack'.
instance From.From Text.Text String where
  from = Text.unpack

-- | Uses 'LazyText.pack'. Some 'Char' values cannot be represented in
-- 'LazyText.Text' and will be replaced with @'\\xFFFD'@.
instance From.From String LazyText.Text where
  from = LazyText.pack

-- | Uses 'LazyText.unpack'.
instance From.From LazyText.Text String where
  from = LazyText.unpack

-- TryFromException

-- | Uses @coerce@.
instance
  From.From
    (TryFromException.TryFromException source oldTarget)
    (TryFromException.TryFromException source newTarget)

-- Day

-- | Uses 'Time.ModifiedJulianDay'.
instance From.From Integer Time.Day where
  from = Time.ModifiedJulianDay

-- | Uses 'Time.toModifiedJulianDay'.
instance From.From Time.Day Integer where
  from = Time.toModifiedJulianDay

-- DayOfWeek

-- | Uses 'Time.dayOfWeek'.
instance From.From Time.Day Time.DayOfWeek where
  from = Time.dayOfWeek

-- UniversalTime

-- | Uses 'Time.ModJulianDate'.
instance From.From Rational Time.UniversalTime where
  from = Time.ModJulianDate

-- | Uses 'Time.getModJulianDate'.
instance From.From Time.UniversalTime Rational where
  from = Time.getModJulianDate

-- DiffTime

-- | Uses 'realToFrac'.
instance From.From Fixed.Pico Time.DiffTime where
  from = realToFrac

-- | Uses 'realToFrac'.
instance From.From Time.DiffTime Fixed.Pico where
  from = realToFrac

-- NominalDiffTime

-- | Uses 'Time.secondsToNominalDiffTime'.
instance From.From Fixed.Pico Time.NominalDiffTime where
  from = Time.secondsToNominalDiffTime

-- | Uses 'Time.nominalDiffTimeToSeconds'.
instance From.From Time.NominalDiffTime Fixed.Pico where
  from = Time.nominalDiffTimeToSeconds

-- POSIXTime

-- | Uses 'Time.systemToPOSIXTime'.
instance From.From Time.SystemTime Time.POSIXTime where
  from = Time.systemToPOSIXTime

-- | Uses 'Time.utcTimeToPOSIXSeconds'.
instance From.From Time.UTCTime Time.POSIXTime where
  from = Time.utcTimeToPOSIXSeconds

-- | Uses 'Time.posixSecondsToUTCTime'.
instance From.From Time.POSIXTime Time.UTCTime where
  from = Time.posixSecondsToUTCTime

-- SystemTime

-- | Uses 'Time.utcToSystemTime'.
instance From.From Time.UTCTime Time.SystemTime where
  from = Time.utcToSystemTime

-- | Uses 'Time.systemToTAITime'.
instance From.From Time.SystemTime Time.AbsoluteTime where
  from = Time.systemToTAITime

-- | Uses 'Time.systemToUTCTime'.
instance From.From Time.SystemTime Time.UTCTime where
  from = Time.systemToUTCTime

-- TimeOfDay

-- | Uses 'Time.timeToTimeOfDay'.
instance From.From Time.DiffTime Time.TimeOfDay where
  from = Time.timeToTimeOfDay

-- | Uses 'Time.dayFractionToTimeOfDay'.
instance From.From Rational Time.TimeOfDay where
  from = Time.dayFractionToTimeOfDay

-- | Uses 'Time.timeOfDayToTime'.
instance From.From Time.TimeOfDay Time.DiffTime where
  from = Time.timeOfDayToTime

-- | Uses 'Time.timeOfDayToDayFraction'.
instance From.From Time.TimeOfDay Rational where
  from = Time.timeOfDayToDayFraction

-- CalendarDiffTime

-- | Uses 'Time.calendarTimeDays'.
instance From.From Time.CalendarDiffDays Time.CalendarDiffTime where
  from = Time.calendarTimeDays

-- | Uses 'Time.calendarTimeTime'.
instance From.From Time.NominalDiffTime Time.CalendarDiffTime where
  from = Time.calendarTimeTime

-- ZonedTime

-- | Uses 'Time.zonedTimeToUTC'.
instance From.From Time.ZonedTime Time.UTCTime where
  from = Time.zonedTimeToUTC

-- Tagged

-- | Uses @coerce@. Essentially the same as 'Tagged.Tagged'.
instance From.From a (Tagged.Tagged t a)

-- | Uses @coerce@. Essentially the same as 'Tagged.unTagged'.
instance From.From (Tagged.Tagged t a) a

-- | Uses @coerce@. Essentially the same as 'Tagged.retag'.
instance From.From (Tagged.Tagged t a) (Tagged.Tagged u a)

-- ISO-8859-1

-- | Uses 'Text.decodeLatin1'.
instance From.From Encoding.Latin1S Text.Text where
  from = Text.decodeLatin1 . From.from

-- | Converts via 'Text.Text'.
instance From.From Encoding.Latin1S LazyText.Text where
  from = Utility.via @Text.Text

-- | Converts via 'Text.Text'.
instance From.From Encoding.Latin1S String where
  from = Utility.via @Text.Text

-- | Uses 'LazyText.decodeLatin1'.
instance From.From Encoding.Latin1L LazyText.Text where
  from = LazyText.decodeLatin1 . From.from

-- | Converts via 'LazyText.Text'.
instance From.From Encoding.Latin1L Text.Text where
  from = Utility.via @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance From.From Encoding.Latin1L String where
  from = Utility.via @LazyText.Text

-- | Converts via 'String'.
instance TryFrom.TryFrom Text.Text Encoding.Latin1S where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom . Utility.into @String

-- | Converts via 'String'.
instance TryFrom.TryFrom Text.Text Encoding.Latin1L where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom . Utility.into @String

-- | Converts via 'String'.
instance TryFrom.TryFrom LazyText.Text Encoding.Latin1L where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom . Utility.into @String

-- | Converts via 'String'.
instance TryFrom.TryFrom LazyText.Text Encoding.Latin1S where
  tryFrom = Utility.eitherTryFrom $ TryFrom.tryFrom . Utility.into @String

-- | Uses 'Char8.pack' when each character 'Char.isLatin1'.
instance TryFrom.TryFrom String Encoding.Latin1S where
  tryFrom = Utility.maybeTryFrom $ \string -> do
    Monad.guard $ all Char.isLatin1 string
    pure . From.from $ Char8.pack string

-- | Uses 'LazyChar8.pack' when each character 'Char.isLatin1'.
instance TryFrom.TryFrom String Encoding.Latin1L where
  tryFrom = Utility.maybeTryFrom $ \string -> do
    Monad.guard $ all Char.isLatin1 string
    pure . From.from $ LazyChar8.pack string

-- UTF-8

-- | Uses 'Text.decodeUtf8''.
instance TryFrom.TryFrom Encoding.Utf8S Text.Text where
  tryFrom = Utility.eitherTryFrom $ Text.decodeUtf8' . From.from

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf8S LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @LazyText.Text) . Utility.tryInto @Text.Text

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf8S String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @Text.Text

-- | Uses 'LazyText.decodeUtf8''.
instance TryFrom.TryFrom Encoding.Utf8L LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ LazyText.decodeUtf8' . From.from

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf8L Text.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @Text.Text) . Utility.tryInto @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf8L String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @LazyText.Text

-- | Uses 'Text.encodeUtf8'.
instance From.From Text.Text Encoding.Utf8S where
  from = From.from . Text.encodeUtf8

-- | Converts via 'ByteString.ByteString'.
instance From.From Text.Text Encoding.Utf8L where
  from = fmap From.from . Utility.into @Encoding.Utf8S

-- | Uses 'LazyText.encodeUtf8'.
instance From.From LazyText.Text Encoding.Utf8L where
  from = From.from . LazyText.encodeUtf8

-- | Converts via 'LazyByteString.ByteString'.
instance From.From LazyText.Text Encoding.Utf8S where
  from = fmap From.from . Utility.into @Encoding.Utf8L

-- | Converts via 'Text.Text'.
instance From.From String Encoding.Utf8S where
  from = Utility.via @Text.Text

-- | Converts via 'LazyText.Text'.
instance From.From String Encoding.Utf8L where
  from = Utility.via @LazyText.Text

-- UTF-16LE

-- | Uses 'Text.decodeUtf16LE'.
instance TryFrom.TryFrom Encoding.Utf16LS Text.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . Text.decodeUtf16LE . From.from

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf16LS LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @LazyText.Text) . Utility.tryInto @Text.Text

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf16LS String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @Text.Text

-- | Uses 'LazyText.decodeUtf16LE'.
instance TryFrom.TryFrom Encoding.Utf16LL LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . LazyText.decodeUtf16LE . From.from

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf16LL Text.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @Text.Text) . Utility.tryInto @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf16LL String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @LazyText.Text

-- | Uses 'Text.encodeUtf16LE'.
instance From.From Text.Text Encoding.Utf16LS where
  from = From.from . Text.encodeUtf16LE

-- | Converts via 'ByteString.ByteString'.
instance From.From Text.Text Encoding.Utf16LL where
  from = fmap From.from . Utility.into @Encoding.Utf16LS

-- | Uses 'LazyText.encodeUtf16LE'.
instance From.From LazyText.Text Encoding.Utf16LL where
  from = From.from . LazyText.encodeUtf16LE

-- | Converts via 'LazyByteString.ByteString'.
instance From.From LazyText.Text Encoding.Utf16LS where
  from = fmap From.from . Utility.into @Encoding.Utf16LL

-- | Converts via 'Text.Text'.
instance From.From String Encoding.Utf16LS where
  from = Utility.via @Text.Text

-- | Converts via 'LazyText.Text'.
instance From.From String Encoding.Utf16LL where
  from = Utility.via @LazyText.Text

-- UTF-16BE

-- | Uses 'Text.decodeUtf16BE'.
instance TryFrom.TryFrom Encoding.Utf16BS Text.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . Text.decodeUtf16BE . From.from

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf16BS LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @LazyText.Text) . Utility.tryInto @Text.Text

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf16BS String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @Text.Text

-- | Uses 'LazyText.decodeUtf16BE'.
instance TryFrom.TryFrom Encoding.Utf16BL LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . LazyText.decodeUtf16BE . From.from

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf16BL Text.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @Text.Text) . Utility.tryInto @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf16BL String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @LazyText.Text

-- | Uses 'Text.encodeUtf16BE'.
instance From.From Text.Text Encoding.Utf16BS where
  from = From.from . Text.encodeUtf16BE

-- | Converts via 'ByteString.ByteString'.
instance From.From Text.Text Encoding.Utf16BL where
  from = fmap From.from . Utility.into @Encoding.Utf16BS

-- | Uses 'LazyText.encodeUtf16BE'.
instance From.From LazyText.Text Encoding.Utf16BL where
  from = From.from . LazyText.encodeUtf16BE

-- | Converts via 'LazyByteString.ByteString'.
instance From.From LazyText.Text Encoding.Utf16BS where
  from = fmap From.from . Utility.into @Encoding.Utf16BL

-- | Converts via 'Text.Text'.
instance From.From String Encoding.Utf16BS where
  from = Utility.via @Text.Text

-- | Converts via 'LazyText.Text'.
instance From.From String Encoding.Utf16BL where
  from = Utility.via @LazyText.Text

-- UTF-32LE

-- | Uses 'Text.decodeUtf32LE'.
instance TryFrom.TryFrom Encoding.Utf32LS Text.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . Text.decodeUtf32LE . From.from

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf32LS LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @LazyText.Text) . Utility.tryInto @Text.Text

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf32LS String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @Text.Text

-- | Uses 'LazyText.decodeUtf32LE'.
instance TryFrom.TryFrom Encoding.Utf32LL LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . LazyText.decodeUtf32LE . From.from

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf32LL Text.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @Text.Text) . Utility.tryInto @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf32LL String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @LazyText.Text

-- | Uses 'Text.encodeUtf32LE'.
instance From.From Text.Text Encoding.Utf32LS where
  from = From.from . Text.encodeUtf32LE

-- | Converts via 'ByteString.ByteString'.
instance From.From Text.Text Encoding.Utf32LL where
  from = fmap From.from . Utility.into @Encoding.Utf32LS

-- | Uses 'LazyText.encodeUtf32LE'.
instance From.From LazyText.Text Encoding.Utf32LL where
  from = From.from . LazyText.encodeUtf32LE

-- | Converts via 'LazyByteString.ByteString'.
instance From.From LazyText.Text Encoding.Utf32LS where
  from = fmap From.from . Utility.into @Encoding.Utf32LL

-- | Converts via 'Text.Text'.
instance From.From String Encoding.Utf32LS where
  from = Utility.via @Text.Text

-- | Converts via 'LazyText.Text'.
instance From.From String Encoding.Utf32LL where
  from = Utility.via @LazyText.Text

-- UTF-32BE

-- | Uses 'Text.decodeUtf32BE'.
instance TryFrom.TryFrom Encoding.Utf32BS Text.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . Text.decodeUtf32BE . From.from

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf32BS LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @LazyText.Text) . Utility.tryInto @Text.Text

-- | Converts via 'Text.Text'.
instance TryFrom.TryFrom Encoding.Utf32BS String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @Text.Text

-- | Uses 'LazyText.decodeUtf32BE'.
instance TryFrom.TryFrom Encoding.Utf32BL LazyText.Text where
  tryFrom = Utility.eitherTryFrom $ tryEvaluate @Text.UnicodeException . LazyText.decodeUtf32BE . From.from

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf32BL Text.Text where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @Text.Text) . Utility.tryInto @LazyText.Text

-- | Converts via 'LazyText.Text'.
instance TryFrom.TryFrom Encoding.Utf32BL String where
  tryFrom = Utility.eitherTryFrom $ fmap (Utility.into @String) . Utility.tryInto @LazyText.Text

-- | Uses 'Text.encodeUtf32BE'.
instance From.From Text.Text Encoding.Utf32BS where
  from = From.from . Text.encodeUtf32BE

-- | Converts via 'ByteString.ByteString'.
instance From.From Text.Text Encoding.Utf32BL where
  from = fmap From.from . Utility.into @Encoding.Utf32BS

-- | Uses 'LazyText.encodeUtf32BE'.
instance From.From LazyText.Text Encoding.Utf32BL where
  from = From.from . LazyText.encodeUtf32BE

-- | Converts via 'LazyByteString.ByteString'.
instance From.From LazyText.Text Encoding.Utf32BS where
  from = fmap From.from . Utility.into @Encoding.Utf32BL

-- | Converts via 'Text.Text'.
instance From.From String Encoding.Utf32BS where
  from = Utility.via @Text.Text

-- | Converts via 'LazyText.Text'.
instance From.From String Encoding.Utf32BL where
  from = Utility.via @LazyText.Text

--

realFloatToRational ::
  (RealFloat s) => s -> Either Exception.ArithException Rational
realFloatToRational s
  | isNaN s = Left Exception.LossOfPrecision
  | isInfinite s =
      if s > 0
        then Left Exception.Overflow
        else Left Exception.Underflow
  | otherwise =
      Right $
        overPositive
          (uncurry makeRational . uncurry fromDigits . Numeric.floatToDigits 10)
          s

overPositive :: (Eq a, Num a, Num b) => (a -> b) -> a -> b
overPositive f x = if signum x == -1 then -(f (-x)) else f x

fromDigits :: [Int] -> Int -> (Integer, Integer)
fromDigits ds e =
  List.foldl' (\(a, n) d -> (a * 10 + toInteger d, n - 1)) (0, toInteger e) ds

makeRational :: Integer -> Integer -> Rational
makeRational d e = toRational d * 10 ^^ e

fromNonNegativeIntegral ::
  (Integral s, Num t) => s -> Either Exception.ArithException t
fromNonNegativeIntegral x =
  if x < 0 then Left Exception.Underflow else Right $ fromIntegral x

tryEvaluate :: (Exception.Exception e) => a -> Either e a
tryEvaluate = Unsafe.unsafePerformIO . Exception.try . Exception.evaluate
