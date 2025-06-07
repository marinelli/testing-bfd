module C where

newtype T2 = C2 Int

noinlined :: T2
noinlined = C2 256
{-# NOINLINE noinlined #-}
