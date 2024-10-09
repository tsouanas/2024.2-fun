module CoolExps where

--
-- let-in expressions
--

leteg :: Int
leteg = 4 + (let x = 4 in x + 10) -- this parenthesis is optional

shadoweg :: Int
shadoweg = 4 + (let x = 4 in (let x = 12 in x + 10))  -- these parentheses are optional

shadoweg' :: Int
shadoweg' = 4 + let x = 4
                 in let x = 12
                        y = 13
                     in x + 10

--
-- if-then-else expressions
--

ifeg :: Int
ifeg = 4 + (if 2 > 5 then 82 else 500)   -- this parenthesis is optional

ifeg' :: Int
ifeg' = (if 2 > 5 then 82 else 500) + 4  -- this parenthesis is NOT optional

laddereg :: Int -> Int -> Int
laddereg x y =
    4 + if x > 0 then 82 else if y > 0 then 500 else 10

laddereg' :: Int -> Int -> Int
laddereg' x y = 4 + if x > 0
                       then 82
                       else if y > 0
                               then 500
                               else 10

laddereg'' :: Int -> Int -> Int
laddereg'' x y =
  4 + if x > 0
      then 82
      else if y > 0
           then 500
           else let
                  u = x + 2
                  y = x + u + y
                 in u + y

