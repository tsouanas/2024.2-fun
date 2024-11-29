module ExIO where

import Prelude hiding
    ( putStr
    , putStrLn
    , getLine
    , interact
    , (>>)
    , (>>=)
    )

-- read through the whole module first, to get an idea
-- of what's required and to decide where to start

getLine :: IO String
getLine = undefined

getInt :: IO Int
getInt = undefined

getSafeInt :: IO (Maybe Int)
getSafeInt = undefined

-- sequencing: first do f ignoring its result, then do g and keep its result
infixl 1 >>

(>>) :: IO a -> IO b -> IO b
ax >> ay = undefined

-- pauses till the user presses any normal key
pause :: IO ()
pause = undefined

skip :: IO ()
skip = undefined

newline :: IO ()
newline = undefined

-- define it as a foldr
putStr :: String -> IO ()
putStr = undefined

-- transform f into one "just like f" except that it prints a newline
-- after any side-effects f may had
lnize :: (a -> IO b) -> a -> IO b
lnize f = undefined

putStrLn :: String -> IO ()
putStrLn = lnize putStr

putCharLn :: Char -> IO ()
putCharLn = lnize putChar

-- reads the entire user input as a single string, transforms it, and prints it
interact :: (String -> String) -> IO ()
interact = undefined

perlineize :: (String -> String) -> (String -> String)
perlineize f = unlines . map f . lines

interactPerLine :: (String -> String) -> IO ()
interactPerLine = interact . perlineize

when :: Bool -> IO () -> IO ()
when = undefined

unless :: Bool -> IO () -> IO ()
unless = undefined

guard :: Bool -> IO ()
guard = undefined

forever :: IO a -> IO b
forever = undefined

-- transforms the action given to an equivalent one that has no result
void :: IO a -> IO ()
void = undefined


-- Kleisli compositions
infixr 1 >=>, <=<

-- diagrammatic order
(>=>) :: (a -> IO b) -> (b -> IO c) -> (a -> IO c)
f >=> g = undefined

-- traditional order
-- comparison of types:
-- (.)   :: (b ->    c) -> (a ->    b) -> a ->    c
-- (<=<) :: (b -> IO c) -> (a -> IO b) -> a -> IO c
(<=<) :: (b -> IO c) -> (a -> IO b) -> (a -> IO c)
(<=<) = flip (>=>)


-- Bind
infixl 1 >>=

(>>=) :: IO a -> (a -> IO b) -> IO b
ax >>= f = undefined


infixl 4 $>, <$

-- make an action that has the side effects of the action on the left
-- but with result the value on the right
($>) :: IO a -> b -> IO b
ax $> y = undefined

-- vice-versa
(<$) :: a -> IO b -> IO a
x <$ ioy = undefined

ap :: IO (a -> b) -> IO a -> IO b
af `ap` ax = undefined

filterIO :: (a -> IO Bool) -> [a] -> IO [a]
filterIO = undefined

iomap :: (a -> b) -> IO a -> IO b
iomap = undefined

mapIO :: (a -> IO b) -> [a] -> IO [b]
mapIO = undefined

zipWithIO :: (a -> b -> IO c) -> [a] -> [b] -> IO [c]
zipWithIO = undefined

zipWithIO_ :: (a -> b -> IO c) -> [a] -> [b] -> IO ()
zipWithIO_ = undefined

sequenceIO :: [IO a] -> IO [a]
sequenceIO = undefined

sequenceIO_ :: [IO a] -> IO ()
sequenceIO_ = undefined

replicateIO :: Integral i => i -> IO a -> IO [a]
replicateIO = undefined

replicateIO_ :: Integral i => i -> IO a -> IO ()
replicateIO_ = undefined

forIO :: [a] -> (a -> IO b) -> IO [b]
forIO = undefined

forIO_ :: [a] -> (a -> IO b) -> IO ()
forIO_ = undefined

joinIO :: IO (IO a) -> IO a
joinIO = undefined

foldlIO :: (b -> a -> IO b) -> b -> [a] -> IO b
foldlIO = undefined

foldlIO_ :: (b -> a -> IO b) -> b -> [a] -> IO ()
foldlIO_ = undefined


