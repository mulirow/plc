order :: Int -> Int -> (Int, Int)
order a b | a >= b = (a, b)
          | otherwise = (b, a)

min3 :: Int -> Int -> Int -> Int
min3 a b c = snd (order (snd (order b c)) a)

mid3 :: Int -> Int -> Int -> Int
mid3 a b c = snd (order (fst (order b c)) a)

max3 :: Int -> Int -> Int -> Int
max3 a b c = fst (order (fst (order b c)) a)

ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTripla (a, b, c) = (min3 a b c, mid3 a b c, max3 a b c)