{-# LANGUAGE GADTs #-}

data ArEx where
    Plus :: ArEx -> ArEx -> ArEx
    Times :: ArEx -> ArEx -> ArEx
    Neg :: ArEx -> ArEx
    At :: Int -> ArEx
  deriving ( Eq, Show )

pretty :: ArEx -> String
pretty = undefined

eval :: ArEx -> Int
eval (At x) = x
eval (Plus s t) = eval s + eval t
eval (Times s t) = eval s * eval t
eval (Neg s) = - (eval s)

step :: ArEx -> ArEx
step = undefined

