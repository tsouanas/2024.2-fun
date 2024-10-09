module Lazy where

import Nat

infinity :: Nat
infinity = S infinity

five :: Nat -> Int
five n = 5

five' :: Nat -> Int
five' _ = 5

iszero :: Nat -> Bool
iszero O     = True
iszero (S _) = False

isAtLeastTwo :: Nat -> Bool
isAtLeastTwo O         = False
isAtLeastTwo (S O)     = False
isAtLeastTwo (S (S _)) = True

isAtLeastTwo' :: Nat -> Bool
isAtLeastTwo' (S (S _)) = True
isAtLeastTwo' _         = False

