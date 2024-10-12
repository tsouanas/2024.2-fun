{-# LANGUAGE GADTs #-}

module Bool where

import Prelude hiding
   ( Num(..)
   , Bool(..)
   )

data Bool where
    False :: Bool
    True :: Bool
  deriving (Eq, Show)

-- operations

band :: Bool -> Bool -> Bool
band True True = True
band _ _ = False

bnot :: Bool -> Bool
bnot False = True
bnot True  = False

bor :: Bool -> Bool -> Bool
bor False False = False
bor _ _ = True


