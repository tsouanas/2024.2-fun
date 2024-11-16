module Either where

import Prelude hiding ( Either(..) )

data Either e a where
  Left  :: e -> Either e a
  Right :: a -> Either e a

