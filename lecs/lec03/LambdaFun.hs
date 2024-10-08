module LambdaHoles where

myInt :: Int
myInt = 1 * 3 + 7 * 4

f :: Int -> Int
f x = 1 * x + 7 * 4

f' :: Int -> Int
f' = \x -> 1 * x + 7 * 4

g :: Int -> Int -> Int
g x y = 1 * x + 7 * y

g' :: Int -> Int -> Int
g' x = \y -> 1 * x + 7 * y

g'' :: Int -> Int -> Int
g'' = \x -> \y -> 1 * x + 7 * y

g''' :: Int -> Int -> Int
g''' = \x y -> 1 * x + 7 * y

ug :: (Int, Int) -> Int
ug (x,y) = 1 * x + 7 * y

ug' :: (Int, Int) -> Int
ug' = \(x,y) -> 1 * x + 7 * y

