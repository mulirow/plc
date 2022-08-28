data Tree t
    = Nilt
    | Node t (Tree t) (Tree t)
    deriving (Read, Show)

collapse :: Tree t -> [t]
collapse Nilt = []
collapse (Node root l r) = collapse l ++ [root] ++ collapse r

fst_step :: [Int] -> [[Int]]
fst_step [] = []
fst_step l = [(take 8 l)] ++ fst_step (drop 8 l)

decrypt :: Int -> Char
decrypt x 
    | x `mod` 5 == 0 = 'E'
    | x `mod` 5 == 1 = 'M'
    | x `mod` 5 == 2 = 'A'
    | x `mod` 5 == 3 = 'C'
    | x `mod` 5 == 4 = 'S'

snd_step :: [[Int]] -> [String]
snd_step [] = []
snd_step (x:xs) = (map decrypt x) : (snd_step xs)

dna1 :: Tree Int -> [String]
dna1 Nilt = []
dna1 (Node root l r) = snd_step (fst_step (collapse (Node root l r)))

main :: IO()
main = do
    input <- getLine
    let result = dna1 (read input :: Tree Int)
    print result