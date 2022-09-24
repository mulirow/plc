import Data.Char
type Urna = (Int, [(String, Int)])

teste :: [Urna]
teste = [(99, [("Cand1", 89), ("Cand2", 93), ("Cand3", 99), ("Cand4", 91)]) ,(98, [("Cand1", 85), ("Cand2", 98), ("Cand3", 89), ("Cand4", 90)]), (97, [("Cand1", 97), ("Cand2", 93), ("Cand3", 99), ("Cand4", 92)])]

unzip' :: [Urna] -> [(String, Int)]
unzip' [] = []
unzip' (u:us) = snd u ++ unzip' us

count :: [(String, Int)] -> [(String, Int)]
count [] = []
count votos = [(fst (head votos), foldr (+) 0 [snd y | y <- votos, fst y == fst (head votos)])] ++ count [y | y <- votos, fst y /= fst (head votos)]

totalize :: [Urna] -> [(String, Int)]
totalize (u:us) = count (unzip' (u:us))
-- ----------
-- 2)
ordena :: [(String, Int)] -> [(String, Int)]
ordena [] = []
ordena (x:xs) = ordena [a | a <- xs, snd a >= snd x] ++ [x] ++ ordena [b | b <- xs, snd b < snd x]

-- ----------
-- 3)
makePairs :: String -> [String]
makePairs (x:xs)
    | length (x:xs) >= 2 = [[x] ++ [head xs]] ++ (makePairs xs)
    | otherwise = []

countElem :: Eq t => [t] -> [(t, Int)]
countElem [] = []
countElem (x:xs) = [(x, length [y | y <- (x:xs), y == x])] ++ countElem [y | y <- (x:xs), y /= x]

frequencia :: String -> [(String, Int)]
frequencia str = filter (\x -> snd x >= 2) (countElem (makePairs str))

-- ----------
-- 4)
data Chaves = No Int String Chaves Chaves | Folha

chaveTeste = No 6 "te" (No 4 " t" Folha (No 5 "m " Folha Folha))
                       (No 8 "st" (No 7 "es" Folha Folha) Folha)

replace :: Chaves -> Int -> String
replace (No num str l r) x
    | x == num = str
    | x > num = replace r x
    | otherwise = replace l x
replace Folha x = "" 

descompacta :: Chaves -> String -> String
descompacta _ [] = []
descompacta key (x:xs)
    | not (isDigit x) = [x] ++ descompacta key xs
    | otherwise = replace key (read [x]) ++ descompacta key xs