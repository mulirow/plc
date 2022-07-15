searchDict :: Char -> [(Char, Char)] -> Char
searchDict x (c:cs) | x == fst c = snd c
                    | otherwise = searchDict x cs

decEnigma :: String -> [(Char, Char)] -> String
decEnigma [] (c:cs) = []
decEnigma (x:xs) (c:cs) = (searchDict x (c:cs)) : decEnigma xs (c:cs)