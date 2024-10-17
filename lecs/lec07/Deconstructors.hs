module Deconstructors where

import Nat
import List
import Prelude
    ( error
    )

-- List --------------------------------------------------------

-- Nil deconstructors (nil: Nil is nullary)

-- Cons deconstructors (two: Cons is binary)

head :: List a -> a
head (Cons x _) = x
head Nil = error "not made by the constructor I deconstruct: Cons"

tail :: List a -> List a
tail (Cons _ xs) = xs
tail Nil = error "not made by the constructor I deconstruct: Cons"

-- Nat ---------------------------------------------------------

-- O deconstructors (none: O is nullary)

-- S deconstructors (one: S is unary)

pred :: Nat -> Nat
pred (S n) = n
pred O = error "not made by the constructor I deconstruct: S"

