max' :: Ord t => [t] -> t
max' [] = error "tried to get max out of empty list"
max' l = foldr1 (\x y -> if x >= y then x else y) l

highestElems :: [[Int]] -> [Int]
highestElems [] = []
highestElems (x:xs) = [max' elem | elem <- (x:xs)] 