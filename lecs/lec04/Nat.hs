{-# LANGUAGE GADTs #-}

module Nat where

import Prelude hiding
   ( Num(..) )

data Nat where
    O :: Nat
    S :: Nat -> Nat
  deriving (Eq, Show)

plus :: Nat -> Nat -> Nat
plus n O = n
plus n (S m) = S (plus n m)

(+) :: Nat -> Nat -> Nat
(+) = plus

-- abbrevs (syntactic sugar)
o, so, sso, ssso :: Nat
o    = O
so   = S o
sso  = S so
ssso = S sso

