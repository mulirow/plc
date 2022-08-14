primes :: [Int] -> [Int]
primes [] = []
primes (a:as) = a : primes [x | x <- as, x `mod` a /= 0]