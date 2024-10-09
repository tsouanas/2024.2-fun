{-# LANGUAGE GADTs #-}

module Nat where

import Prelude hiding
   ( Num(..) )


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

plus :: Nat -> Nat -> Nat
plus n O = n
plus n (S m) = S (plus n m)

(+) :: Nat -> Nat -> Nat
(+) = plus

suc :: Nat -> Nat
suc = plus so

(*) :: Nat -> Nat -> Nat
n * O = O
n * (S m) = n * m + n

times :: Nat -> Nat -> Nat
times = (*)

double :: Nat -> Nat
double = (*) sso

triple :: Nat -> Nat
triple = undefined

