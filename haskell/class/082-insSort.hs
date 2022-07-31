insert :: Ord t => t -> [t] -> [t]
insert a [] = [a]
insert a (x:xs)
    | a <= x = a:x:xs
    | otherwise = x : insert a xs

insSort :: Ord t => [t] -> [t]
insSort [] = []
insSort (x:xs) = insert x (insSort xs)

insSort' :: Ord t => [t] -> [t]
insSort' l = foldr insert [] l