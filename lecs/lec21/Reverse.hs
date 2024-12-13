module Reverse where

import Prelude hiding
    ( reverse
    , (++)
    )

reverse :: [a] -> [a]
reverse [] = []
reverse (x : xs) = reverse xs ++ [x]

(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x : xs) ++ ys = x : (xs ++ ys)

-- WISH: revcat xs ys = rev xs ++ ys
-- THEN:
rev :: [a] -> [a]
rev xs = revcat xs []

revcat :: [a] -> [a] -> [a]
revcat [] ys = ys
revcat (x:xs) ys = revcat xs (x:ys)


k = [1..1000]
m = [1..1000000]
g = [1..1000000000]

-- consult ghci:
-- ghci> :set +s
-- ghci> reverse k
-- ghci> rev k
-- ghci> reverse m
-- ghci> rev m
-- ghci> reverse g
-- ghci> rev g

