organizaNomes :: [String] -> [(Char, [String])]
organizaNomes [] = []
organizaNomes (x:xs) = [(head x, [y | y <- (x:xs), head y == head x])] ++ organizaNomes [y | y <- (x:xs), head y /= head x]