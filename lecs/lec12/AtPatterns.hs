module AtPatterns where

pairs :: [a] -> [(a,a)]
pairs (x : xs@(x' : _)) = (x,x') : pairs xs
pairs _ = []

