indivisible :: Int -> Int -> Bool
indivisible m n | n == 1 = True
                | otherwise = (m `mod` n /= 0) && (indivisible m (n-1))

isPrime :: Int -> Bool
isPrime n = indivisible n (n-1)

-- gcd :: Int -> Int -> Int
-- gcd a b | b /= 0 = gcd b (a `mod` b)
--         | otherwise = a

gcd_extend :: Int -> Int -> Int
gcd_extend a b | b == 0 = a
               | otherwise = gcd_extend b (a `mod` b)

primesBetween :: Int -> Int -> Bool
primesBetween x y | gcd_extend x y == 1 = True
                  | otherwise = False