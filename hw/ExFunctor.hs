module ExFunctor where

import Prelude hiding ( fmap , (<$) )

class Funktor f where
  fmap :: (a -> b) -> f a -> f b

  (<$) :: b        -> f a -> f b
  (<$) = fmap . const


instance Funktor [] where
    fmap = map

instance Funktor Maybe where
    fmap = undefined

-- what about Either?

-- what about pairs?

-- what about functions?

-- what about Trees?

-- ...define Functor instances of as many * -> * things as you can think of!

