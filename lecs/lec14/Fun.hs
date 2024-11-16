module Fun where

import Prelude hiding ( Functor(..), Either(..) )
import Either

mapMaybe :: (a -> b) -> (Maybe a -> Maybe b)
mapMaybe f Nothing = Nothing
mapMaybe f (Just x) = Just (f x)

class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor [] where
    fmap = map

instance Functor Maybe where
    fmap = mapMaybe

instance Functor (Either e) where
    fmap f (Left e) = Left e
    fmap f (Right x) = Right (f x)

mx_s, mx_s' :: [] (Maybe Int)
mx_s  = [Just 3, Just 42, Nothing]
mx_s' = []

m_xs, m_xs', m_xs'' :: Maybe ([] Int)
m_xs   = Nothing
m_xs'  = Just []
m_xs'' = Just [3, 5, 3]

-- fmap (fmap (* 10)) mx_s    =  [Just 30,Just 420,Nothing]
-- fmap (fmap (* 10)) m_xs''  =  Just [30,50,30]

-- (fmap . fmap) (* 10) mx_s    =  [Just 30,Just 420,Nothing]
-- (fmap . fmap) (* 10) mx_s'   =  []
-- (fmap . fmap) (* 10) m_xs    =  Nothing
-- (fmap . fmap) (* 10) m_xs'   =  Just []
-- (fmap . fmap) (* 10) m_xs''  =  Just [30,50,30]

-- (fmap . fmap . fmap) [[Just 3,  Just 2,  Nothing], [], [Just 5,  Nothing]]
--                    = [[Just 30, Just 20, Nothing], [], [Just 50, Nothing]]

