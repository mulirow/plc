qs :: Ord t => [t] -> [t]
qs [] = []
qs (x:xs) = qs [a | a <- xs, a <= x] ++ [x] ++ qs [b | b <- xs, b > x]

bSort :: [String] -> [String]
bSort [] = []
bSort l = qs l

main = do
    a <- getLine
    let result = bSort (read a :: [String])
    print result