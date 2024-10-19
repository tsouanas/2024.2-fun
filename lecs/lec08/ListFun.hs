module ListFun where

import Nat
import Prelude
    ( Bool(..) , Eq(..) , Show(..) , Int(..)
    , even , odd
    , (++)
    , error
    , otherwise
    )

----------------------------------------------------------------
-- map
----------------------------------------------------------------

doubleNats :: [Nat] -> [Nat]
doubleNats [] = []
doubleNats (n : ns) = double n : doubleNats ns

tripleNats :: [Nat] -> [Nat]
tripleNats [] = []
tripleNats (n : ns) = (ssso * n) : tripleNats ns

map :: (a -> b) ->  [a] -> [b]
--     (a -> b) -> ([a] -> [b])
map f [] = []
map f (x : xs) = f x : map f xs

doubleNats' :: [Nat] -> [Nat]
doubleNats' ns = map double ns

tripleNats' :: [Nat] -> [Nat]
tripleNats' ns = map (ssso *) ns

doubleNats'' :: [Nat] -> [Nat]
doubleNats'' = map double

tripleNats'' :: [Nat] -> [Nat]
tripleNats'' = map (ssso *)

----------------------------------------------------------------
-- filter
----------------------------------------------------------------

onlyEvens :: [Int] -> [Int]
onlyEvens [] = []
onlyEvens (n : ns)
  | even n    = n : onlyEvens ns
  | otherwise = onlyEvens ns

onlyOdds :: [Int] -> [Int]
onlyOdds [] = []
onlyOdds (n : ns)
  | odd n     = n : onlyOdds ns
  | otherwise = onlyOdds ns

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x : xs)
  | p x       = x : filter p xs
  | otherwise =     filter p xs

onlyEvens' :: [Int] -> [Int]
onlyEvens' ns = filter even ns

onlyOdds' :: [Int] -> [Int]
onlyOdds' ns = filter odd ns

onlyEvens'' :: [Int] -> [Int]
onlyEvens'' = filter even

onlyOdds'' :: [Int] -> [Int]
onlyOdds'' = filter odd

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x : xs) =
  let xs' = filter' p xs
   in if p x then x : xs' else xs'

