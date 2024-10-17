{-# LANGUAGE GADTs #-}

module List where

import Nat
import Prelude
    ( Bool(..)
    , Eq(..)
    , Show(..)
    , (++)
    , error
    )
import TypeClasses

data List a where
    Nil  :: List a
    Cons :: a -> List a -> List a
  deriving (Eq, Show)

length :: List a -> Nat
length Nil = O
length (_ `Cons` xs) = S (length xs)

sum :: Additive a => List a -> a
sum Nil = zero
sum (x `Cons` xs) = x `plus` sum xs


