module B where

newtype T = C Int

tiny :: T
tiny = C 255

huge :: T
huge = C 256

inlined :: T
inlined = C 256
{-# INLINE inlined #-}
