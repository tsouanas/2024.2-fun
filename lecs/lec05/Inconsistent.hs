module Inconsistent where

bottom :: a
bottom = bottom

err :: String -> a
err = error

