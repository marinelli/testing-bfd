module A where

import qualified B
import qualified C

b :: B.T1
b = B.inlined

c :: C.T2
c = C.noinlined
