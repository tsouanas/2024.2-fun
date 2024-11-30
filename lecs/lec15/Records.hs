{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE DuplicateRecordFields #-}

{-

Remember to set the above extensions in ghci if you want
to play with this:

ghci> :set -XOverloadedRecordDot
ghci> :set -XDuplicateRecordFields

-}

data Person = Person
  { name  :: String
  , email :: String
  , id    :: Int
  } deriving Show

data Order = Order
  { id      :: Int
  , buyer   :: Person
  , product :: Product
  } deriving Show

data Product = Product
  { id :: Int
  , name :: String
  , price :: Int
  } deriving Show

laptop = Product { id = 42 , name = "Somebook" , price = 99999 }
thanos = Person { name = "Thanos" , email = "thanos@imd" , id = 12 }
order = Order { id = 922 , buyer = thanos , product = laptop }

