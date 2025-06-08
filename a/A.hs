module A where

import qualified B

x :: B.T
x = B.inlined

y :: B.T
y = B.noinlined
