module Match where

import Nat
import TypeClasses
import Prelude
    ( Eq(..)
    , Show(..)
    , (++)
    )

fact :: Nat -> Nat
fact n =
    case n of
      O    -> so
      S n' -> n * fact n'

{-
 - match n with
 -   O    ↦ so
 -   S n' ↦ n * fact n'
 -}
