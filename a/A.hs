module A where

import qualified B

a :: B.T
a = B.inlined255

b :: B.T
b = B.noinlined255

c :: B.T
c = B.inlined256

d :: B.T
d = B.noinlined256
