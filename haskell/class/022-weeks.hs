sales :: Int -> Int
sales 0 = 20
sales 1 = 30
sales 2 = 20
sales 3 = 50
sales 4 = 25
sales 5 = 60
sales n = 0

match :: Int -> Int -> Int
match s n | (sales n) == s = 1
          | otherwise = 0

weeks :: Int -> Int -> Int
weeks s n | n == 0 = (igual s 0)
            | otherwise = (weeks s (n-1)) + (igual s n)