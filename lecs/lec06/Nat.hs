{-# LANGUAGE GADTs #-}

module Nat where

import Prelude
    ( Eq(..)
    , Show(..)
    )

data Nat where
    O :: Nat
    S :: Nat -> Nat
  deriving (Eq, Show)

-- abbrevs (syntactic sugar)

o, so, sso, ssso :: Nat
o    = O
so   = S o
sso  = S so
ssso = S sso

-- operations

(+) :: Nat -> Nat -> Nat
n + O = n
n + (S m) = S (n + m)

(*) :: Nat -> Nat -> Nat
n * O = O
n * (S m) = n * m + n

min :: Nat -> Nat -> Nat
min (S n) (S m) = S (min n m)
min _ _ = O

max :: Nat -> Nat -> Nat
max (S n) (S m) = S (max n m)
max n O = n
max O m = m

fib :: Nat -> Nat
fib (S (S n)) = fib (S n) + fib n
fib n = n

