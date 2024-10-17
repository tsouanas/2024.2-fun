{-# LANGUAGE GADTs #-}

module Nat where

import Prelude
    ( Eq(..)
    , Show(..)
    , (++)
    )

data Nat where
    O :: Nat
    S :: Nat -> Nat

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

monus :: Nat -> Nat -> Nat
O   `monus` _    = O
n   `monus` O    = n
S n `monus` S m  = n `monus` m

