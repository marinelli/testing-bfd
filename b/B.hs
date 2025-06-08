module B where

newtype T = C Int

inlined :: T
inlined = C 256
{-# INLINE inlined #-}

-- Wrap a value >= 256
noinlined :: T
noinlined = C 256
{-# NOINLINE noinlined #-}
-- ^ This is not really required due to `optimization: False` in cabal.project
