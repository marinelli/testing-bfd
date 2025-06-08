module B where

newtype T = C Int

-- MAX_INTLIKE is defined in `rts/include/rts/Constants.h` and used in
-- `precomputedStaticConInfo_maybe` for (optionally) replacing the constructor
-- application with a static closure.

-- Let's wrap some Int values that're lower than or equal to MAX_INTLIKE.
inlined255 :: T
inlined255 = C 255
{-# INLINE inlined255 #-}

noinlined255 :: T
noinlined255 = C 255
{-# NOINLINE noinlined255 #-}
-- ^ This is not really required due to `optimization: False` in cabal.project

-- Let's wrap some Int values that're greater than MAX_INTLIKE.
inlined256 :: T
inlined256 = C 256
{-# INLINE inlined256 #-}

-- This will generate a warning message like this when linking the libraries using the GNU linker (bfd):
-- /usr/bin/ld.bfd: warning: type and size of dynamic symbol `bzm1zminplace_B_noinlined256_closure' are not defined
noinlined256 :: T
noinlined256 = C 256
{-# NOINLINE noinlined256 #-}
-- ^ This is not really required due to `optimization: False` in cabal.project
