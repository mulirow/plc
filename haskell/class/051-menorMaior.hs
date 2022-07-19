order :: Int -> Int -> (Int, Int)
order a b | a >= b = (a, b)
          | otherwise = (b, a)

max' :: Int -> Int -> Int -> Int
max' a b c = fst (order (fst (order b c)) a)

min' :: Int -> Int -> Int -> Int
min' a b c = snd (order (snd (order b c)) a)

menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (min' a b c, max' a b c)
