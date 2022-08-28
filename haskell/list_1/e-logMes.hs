-- truncate' :: Double -> Int -> Double
-- truncate' x n = (fromIntegral (floor (x * t))) / t
--     where t = 10^n

-- round' :: Double -> Int -> Double
-- round' x n = (fromIntegral (round (x * t))) / t
--     where t = 10^n

split :: (Char -> Bool) -> String -> [String]
split p s = case dropWhile p s of
    "" -> []
    s' -> w : split p s''
        where (w, s'') = break p s'

getValues :: [String] -> String -> [Double]
getValues [] s = []
getValues (x:xs) s
    | (drop 3 x == s) = [x'] ++ getValues(drop 3 (x:xs)) s
    | otherwise = getValues(drop 3 (x:xs)) s
        where x' = read(head(drop 2 (x:xs)))

logMes :: String -> String -> Double
logMes (x:xs) [] = 0.00
logMes s (y:ys) = foldl (+) 0 (getValues (split (==';') (y:ys)) s)