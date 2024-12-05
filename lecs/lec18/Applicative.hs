module Applicative where

import Prelude hiding ( Applicative(..) )

class Applicative f where
  pure  :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b

instance Applicative IO where
  pure = return
  af <*> ax = do f <- af
                 x <- ax
                 return $ f x

instance Applicative Maybe where
  pure = Just
  Nothing <*> _ = Nothing
  Just f <*> mx = fmap f mx

instance Applicative [] where
  pure x = undefined
  fs <*> xs = undefined

