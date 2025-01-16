module Lang where

-- Source lang
data Expr = Val Int | Add Expr Expr
  deriving (Eq, Show)

e1 = Val 1 `Add` (Val 2 `Add` Val 5) -- 1 + (2 + 5)
e2 = (Val 2 `Add` Val 5) `Add` Val 1 -- (2 + 5) + 1
e3 = Val 42 -- 42
e4 = Add e1 e2 -- e1 + e2

-- Semantics (denotational)
eval :: Expr -> Int
eval (Val n) = n 
eval (Add u v) = eval u + eval v

-- Virtual machine
type Stack = [Int]
type Code  = [Op]
data Op = PUSH Int | ADD
  deriving (Eq, Show)

s1 = []
s2 = [42, 3, 1, 0]
s3 = repeat 0
s4 = [8]

p1 = [PUSH 5, PUSH 2, ADD, PUSH 1, ADD] -- (2 + 5) + 1
p2 = [PUSH 1, PUSH 5, PUSH 2, ADD, ADD] -- 1 + (2 + 5)
p3 = [PUSH 42]
p4 = [ADD]

-- Execution
exec :: Code -> Stack -> Stack
exec [] s = s
exec (PUSH x : c) s = exec c (x : s)
exec (ADD : c) (x : y : s) = exec c $ (y + x) : s

-- Compiler
comp :: Expr -> Code
comp (Val n) = [PUSH n]
comp (Add u v) = comp u ++ comp v ++ [ADD]

