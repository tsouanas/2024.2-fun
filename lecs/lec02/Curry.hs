module Curry where

import Prelude hiding (curry, uncurry)

cplus :: (Int, Int) -> Int
cplus (x,y) = x + y

plus :: Int -> Int -> Int
plus x y = x + y

curry :: ((a, b) -> c) -> (a -> b -> c)
curry = undefined

uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry = undefined

