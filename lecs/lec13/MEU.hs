module MEU where

import Prelude hiding ( Maybe(..) )


data Maybe a where
  Nothing :: Maybe a
  Just    :: a -> Maybe a

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x


data Empty


data Unit where
  Star :: Unit

five :: Unit -> Int
five Star = 5


