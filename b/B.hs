module B where

newtype T1 = C1 Int

inlined :: T1
inlined = C1 256
{-# INLINE inlined #-}
