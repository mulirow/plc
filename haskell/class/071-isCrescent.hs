neg :: Int -> Int
neg x = -x

isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f n
    | f n >= f (n - 1) = isCrescent f (n - 1)
    | otherwise = False
