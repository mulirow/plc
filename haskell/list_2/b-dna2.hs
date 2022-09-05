data Animal = Cisnal | Iguanoide | Narval
    deriving (Eq, Show)

similarityAux :: String -> String -> Float
similarityAux (x:xs) (y:ys)
    | x == y = 1.0 + similarityAux xs ys
    | otherwise = 0.0 + similarityAux xs ys
similarityAux _ _ = 0.0

similarity :: String -> String -> Float
similarity str1 str2 
    | length str1 >= length str2 = (similarityAux str1 str2) / fromIntegral (length str1)
    | otherwise = (similarityAux str1 str2) / fromIntegral (length str2)

sumTriple :: [Int] -> [Int] -> [Int]
sumTriple (x1:x2:x3) (y1:y2:y3) = [x1 + y1, x2 + y2, head x3 + head y3]
sumTriple _ _ = []

dna2 :: [String] -> [String] -> [Int]
dna2 (x:xs) (y:ys) 
    | (i >= 0.1) && (i <= 0.3) = sumTriple [1, 0, 0] (dna2 xs ys)
    | (i >= 0.4) && (i <= 0.7) = sumTriple [0, 1, 0] (dna2 xs ys)
    | i >= 0.8                 = sumTriple [0, 0, 1] (dna2 xs ys)
    | otherwise = sumTriple [0, 0, 0] (dna2 xs ys)
    where i = similarity x y
dna2 _ _ = [0, 0, 0]

main = do
    firstExtract <- words <$> getLine
    secondExtract <- words <$> getLine
    let result = dna2 firstExtract secondExtract
    print result