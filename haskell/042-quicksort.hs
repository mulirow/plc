qs :: [Int] -> [Int]
qs [] = []
qs (x:xs) = qs (lesserThan xs) ++ [x] ++ qs (greaterThan xs)
    where
        lesserThan [] = []
        lesserThan (a:as) | a < x = a : lesserThan as
                          | otherwise = lesserThan as
        greaterThan [] = []
        greaterThan (a:as) | a > x = a : greaterThan as
                           | otherwise = greaterThan as