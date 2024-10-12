module EvOd where

import Prelude ( )
import Nat
import Bool

-- using 3 equations

ev :: Nat -> Bool
ev O = True
ev (S O) = False
ev (S (S n)) = ev n

od :: Nat -> Bool
od O = False
od (S O) = True
od (S (S n)) = od n

-- using negation

ev' :: Nat -> Bool
ev' O     = True
ev' (S n) = bnot (ev' n)

od' :: Nat -> Bool
od' O     = False
od' (S n) = bnot (ev' n)

-- using mutual recursion

ev'' :: Nat -> Bool
ev'' O     = True
ev'' (S n) = od'' n

od'' :: Nat -> Bool
od'' O     = False
od'' (S n) = ev'' n

