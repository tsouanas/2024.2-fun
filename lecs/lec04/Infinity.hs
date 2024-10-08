module Infinity where

import Nat

infinity :: Nat
infinity = S infinity

five :: Nat -> Int
five n = 5

five' :: Nat -> Int
five' _ = 5

