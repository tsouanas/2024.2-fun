module Sort 
    ( sort
    , msort
    , qsort
    , isort
    ) where

-- choose a default sorting function
sort :: Ord a => [a] -> [a]
sort = msort

-- merge sort
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x] -- XXX: HW: do we need this?
msort xs = merge (msort us) (msort vs)
  where
    (us,vs) = halve xs

halve :: [a] -> ([a],[a])
halve xs = undefined

-- ASSUMPTION: xs and ys are sorted
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x <= y     = x : merge xs (y:ys)
  | otherwise  = y : merge (x:xs) ys

-- quick sort
qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort [x]    = [x] -- XXX: HW: do we need this?
qsort (w:xs) = qsort small ++ [w] ++ qsort large
  where
    small = filter (<= w) xs
    large = filter (> w) xs
    -- XXX: HW: (small, large) = ?

-- insertion sort
isort :: Ord a => [a] -> [a]
isort []     = []
isort (w:xs) = insert w (isort xs)

-- ASSUMPTION: xs is sorted
insert :: Ord a => a -> [a] -> [a]
insert w xs = undefined

