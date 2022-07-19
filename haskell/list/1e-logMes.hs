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

-- addValues :: [String] -> String -> [Double]
-- addValues [] s = []
-- addValues (x:xs) s 
--     | (x == s) = [x'] ++ addValues (drop 3 (x:xs)) s
--     | otherwise = addValues (drop 3 (x:xs)) s
--         where x' = read(head (drop 2 (x:xs)))

getValues :: [String] -> String -> [Double]
getValues [] s = []
getValues (x:xs) s
    | (x == s) = [x'] ++ getValues(drop 3 (x:xs)) s
    | otherwise = getValues(drop 3 (x:xs)) s
        where x' = read(head(drop 2 (x:xs)))

adjustMonths :: [String] -> [String]
adjustMonths [] = []
adjustMonths (x:xs)
    | length (x:xs) `mod` 3 == 0 = (drop 3 x) : (adjustMonths xs)
    | otherwise = x : (adjustMonths xs)

logMes :: String -> String -> Double
logMes (x:xs) [] = 0.00
logMes s (y:ys) = foldl (+) 0 (getValues (adjustMonths (split (==';') (y:ys))) s)