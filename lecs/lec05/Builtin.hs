module Builtin where

--
-- lists
--

test = [1 .. 10]

posints = [1 ..]
mults5  = [0, 5 ..]
mults x = [0, x ..]

onetofive = take 5 posints
first3mults x = take 3 (mults x)
first3mults12 = first3mults 12

compr1 = [ x^2 | x <- [1..10] ]
compr2 = [ x^2 | x <- [1..10], even x ]
compr3 = [ x^2 | x <- [1..10], 3 * x < 20, odd x ]
compr4 = [ x * y | x <- [1..10], y <- compr1, x + y > 30 ]

