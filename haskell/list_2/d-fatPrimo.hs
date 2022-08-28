
-- primes :: [Int] -> [Int]
-- primes [] = []
-- primes (a:as) = a : primes [x | x <- as, x `mod` a /= 0]

-- tupleSum :: (Int, Int) -> (Int, Int) -> (Int, Int)
-- tupleSum (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- num_factor :: Int -> Int -> (Int, Int)
-- num_factor n x
--     | n `mod` x == 0 = tupleSum (0, 1) (num_factor (n `div` x) x)
--     | otherwise = (x, 0)

-- fatPrime :: Int -> [(Int, Int)]
-- fatPrime n = filter (\x -> snd x /= 0) (map (num_factor n) primesTbl)
--     where primesTbl = primes (2 : [3,5..n])

factors n = [x | x <- [1..n], n `mod` x == 0]
isPrime n = factors n == [1, n]

fatPrime num = [(x, last $ takeWhile (\n -> (x^n) `elem` (factors num)) [1..]) | x <- filter isPrime $ factors num]
main = do
    a <- getLine
    let result = fatPrime (read a)
    print result