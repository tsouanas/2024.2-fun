module ListNat where

import Prelude (Eq, Show)
import Nat
import Bool

data ListNat where
    Empty :: ListNat
    Cons  :: Nat -> ListNat -> ListNat
  deriving (Eq, Show)

answer :: Nat
answer = let six   = sso * ssso
             seven = S six
          in six * seven

answers :: ListNat
answers = answer `Cons` answers

length :: ListNat -> Nat
length Empty = O
length (_ `Cons` xs) = S (length xs)

