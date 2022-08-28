modLst [] = []
modLst xs = (head (xs) + 1) : (tail (xs))

somarListas :: [Int] -> [Int] -> [Int]
somarListas [] [] = []
somarListas (x:xs) []
    | x < 10 = x : somarListas xs []
    | otherwise = (x - 10) : somarListas (modLst xs) []
somarListas [] (y:ys) 
    | y < 10 = y : somarListas [] ys
    | otherwise = (y - 10) : somarListas [] (modLst ys)
somarListas (x:xs) (y:ys) 
    | (x + y) < 10 = [x + y] ++ (somarListas xs ys)
    | otherwise = [x + y - 10] ++ (somarListas (modLst xs) ys)

main :: IO ()
main = do
    input1 <- getLine
    input2 <- getLine
    let result = reverse (somarListas (reverse (read input1 :: [Int]))  (reverse (read input2 :: [Int])))
    print result