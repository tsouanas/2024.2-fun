module Nat where

import Prelude hiding (Num(..))

data Nat = O | S Nat
  deriving (Eq, Show)

-- abbrevs (syntactic sugar)
o, so, sso, ssso :: Nat
o    = O
so   = S o
sso  = S so
ssso = S sso

