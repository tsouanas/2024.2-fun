module Polymorphism where

import TypeClasses
import Nat
import List

-- the following defines just one function
idNat :: Nat -> Nat
idNat n = n

-- the following defines just one function
idBool :: Bool -> Bool
idBool b = b

-- the following defines a type-indexed family of functions
-- (one for each type α)
id :: a -> a
id x = x

-- the following defines an open-ended family of functions
-- (one for each type α that implements the typeclass Additive)
natTimes :: Additive a => Nat -> a -> a
natTimes O x = zero
natTimes (S n) x = x `plus` natTimes n x

-- N.B. the unrestricted polymorphic function `id` above is also
-- open-ended since we can always define new types

