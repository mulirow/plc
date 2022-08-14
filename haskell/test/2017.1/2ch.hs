import Data.Char

f :: [Int] -> [Int] -> Int
f [] [] = 0
f _ [] = 0
f [] _ = 0
f (a : as) (b : bs)
  | a `mod` b == 0 = a + f as bs
  | otherwise = 0 + f as bs

-- ----------------

p :: String -> Int
p [] = 0
p (a : as) = foldr max 0 [ord x - 48| x <- a : as, isDigit x]

-- ----------------

data Command
    = Go Int
    | Turn
    deriving Show

type Position = Int

data Direction 
    = L
    | R
    deriving Show

type State = (Position, Direction)

move :: Command -> State -> State
move (Go n) (pos, L) = (pos - n, L)
move (Go n) (pos, R) = (pos + n, R)
move Turn (pos, L) = (pos, R)
move Turn (pos, R) = (pos, L)

multimove :: [Command] -> State -> State
multimove [] s = s
multimove (x:xs) s = foldr move s (x:xs) -- multimove xs (move x s)