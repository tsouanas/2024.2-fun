module Fold where

import Prelude hiding
    ( and
    , or
    , sum
    , prod
    , fold
    )

and :: [Bool] -> Bool
and [] = True
and (b : bs) = b && and bs

or :: [Bool] -> Bool
or [] = False
or (b : bs) = b || or bs

sum :: [Int] -> Int
sum [] = 0
sum (n : ns) = n + sum ns

prod :: [Int] -> Int
prod [] = 0
prod (n : ns) = n + prod ns

fold :: a -> (a -> a -> a) -> [a] -> a
fold e b [] = e
fold e b (x:xs) =
  x `b` (fold e b xs)

foldL :: a -> (a -> a -> a) -> [a] -> a
foldL e b [] = e
foldL e b (x:xs) =
  (fold e b xs) `b` x


-- define indirecty who they are by defining
-- who their application on an argument is:
and'  bs = fold True (&&) bs
or'   bs = fold False (||) bs
sum'  ns = fold 0 (+) ns
prod' ns = fold 1 (*) ns

-- define directly who they really *are*:
and''  = fold True (&&)
or''   = fold False (||)
sum''  = fold 0 (+)
prod'' = fold 1 (*)


-- reimplementations of conjer from ListComprehension

conjer' ps x = and [ p x | p <- ps ]

-- ($) is function application (like ␣) but with right syntactic associativity
-- and also the least syntactic precedence.  (Contrast with ␣.)
conjer'' ps x = and $ map ($ x) ps

conjer''' ps x = and $ map (\p -> p x) ps

conditions = [ (> 10), (< 20), odd, (/= 15) ]
-- ghci> filter (conjer conditions) [1 .. 100]
-- [11,13,17,19]

