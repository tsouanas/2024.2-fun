module TypeClasses where

import Nat
import Prelude
    ( Bool(..)
    , Eq(..)
    , Show(..)
    , (++)
    , error
    )

class Additive a where
    plus :: a -> a -> a
    zero :: a
    neg :: a -> a
    minus :: a -> a -> a
    x `minus` y = x `plus` (neg y)


-- implement typeclass specs

instance Show Nat where
    show O = "0"
    show (S n) = "S" ++ show n

instance Eq Nat where
    O == O      =  True
    S n == S m  =  n == m
    _ == _      =  False

instance Additive Nat where

    -- we just use these ops defined in Nat
    plus = (+)
    zero = O

    -- we implement our neg
    neg O = O
    neg (S n) = error "successors have no additive inverse"

    -- we also define minus; this overrides the default implementation
    -- N.B.: this time this is not for efficiency reasons
    minus = monus

