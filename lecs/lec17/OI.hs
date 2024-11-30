module OI where

-- type IO α = World → (World, α)

instance Show (IO a) where
  show iox = "{IO action}"

wrong_putString :: String -> [IO ()]
wrong_putString cs = fmap putChar cs

putString :: String -> IO ()
putString "" = pure ()  -- pure :: a -> IO a
putString (c : cs) =
  do
    putChar c
    putString cs

weird :: IO Char
weird = do  -- different way to style it
  getChar
  y <- getChar
  getChar
  pure y

weird2 :: IO ()
weird2 =  -- yet one more way to style it
  do x <- getChar	
     y <- getChar
     -- if x < y
     --   then putChar x
     --   else putChar y
     putChar (min x y)

{-

Should not have a function of type IO a -> a

The following fails (for good reason):

extract :: IO a -> a
extract iox =
  do x <- iox
     x

The following works but is irrelevant (and is also lying):

execute :: IO Int -> Int
execute iox = 42

-}

