separate :: [[t]] -> [t]
separate [] = []
separate (x:xs) = [y | y <- x] ++ separate xs

countElem :: Eq t => [t] -> [(t, Int)]
countElem [] = []
countElem (x:xs) = [(x, length [y | y <- (x:xs), y == x])] ++ countElem [y | y <- (x:xs), y /= x]

group :: Eq t => [[t]] -> [(t, Int)]
group [] = []
group (x:xs) = countElem (separate (x:xs))