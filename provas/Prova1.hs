{-# LANGUAGE GADTs #-}

module Prova1 where

import Prelude hiding
    ( map , filter , curry , uncurry
    , odd , min , plus , prod , times , len
    , take , dropWhile , tails , concat , repeat , (++) , any , replicate
    , zip , pairs , subseqs , inits , zipWith , countDown
    , zip , zipWith
    )

---------------- A (35 pts) ----------------


-- define: Nat
data Nat :: * where

-- define: List
-- define: map
-- define: filter
-- define: fold
-- define: curry
-- define: uncurry


---------------- B (32 pts) ----------------
-- define 4 of the following functions

-- 4 pts each
--odd   :: Nat -> Bool
--min   :: Nat -> Nat -> Nat
--plus  :: Nat -> Nat -> Nat
--prod  :: List Nat -> Nat
--times :: Nat -> Nat -> Nat
--len   :: List a -> Nat

-- 6 pts each
--take      :: Nat -> List a -> List a
--dropWhile :: (a -> Bool) -> List a -> List a
--tails     :: List a -> List (List a)
--concat    :: List (List a) -> List a          
--repeat    :: a -> List a
--(++)      :: List a -> List a -> List a   
--any       :: (a -> Bool) -> List a -> Bool
--replicate :: Nat -> a -> List a           

-- 8 pts each
--zip       :: List a -> List b -> List (a,b)
--pairs     :: List a -> List (a,a)   
--subseqs   :: List a -> List (List a)
--inits     :: List a -> List (List a)
--zipWith   :: (a -> b -> c) -> List a -> List b -> List c
--countDown :: Nat -> List Nat


---------------- C (12 pts) ----------------
-- define zip in terms of zipWith
zip' = undefined

-- define zipWith in terms of zipWith
zipWith' = undefined


---------------- D (21 pts) ----------------

-- D1: define ArEx
data ArEx where

-- D2: define eval
eval :: ArEx -> Int
eval = undefined

-- D3: define height
height :: ArEx -> Nat
height = undefined

