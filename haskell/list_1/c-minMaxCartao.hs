split :: (Char -> Bool) -> String -> [String]
split p s = case dropWhile p s of
    "" -> []
    s' -> w : split p s''
        where (w, s'') = break p s'

minMax :: [Double] -> (Double, Double) -> (Double, Double)
minMax [] (min, max) = (min, max)
minMax (x:xs) (min, max)
    | (min, max) == (1000000.0, -1) = minMax xs (x, x)
    | x < min = minMax xs (x, max)
    | x > max = minMax xs (min, x)
    | otherwise = minMax xs (min, max)

getValues :: [String] -> [Double]
getValues [] = []
getValues (x:xs) = [x'] ++ getValues(drop 3 (x:xs))
    where x' = read(head(drop 2 (x:xs)))

minMaxCartao :: String -> (Double, Double)
minMaxCartao s = minMax (getValues (split (==';') s)) (1000000.0, -1)