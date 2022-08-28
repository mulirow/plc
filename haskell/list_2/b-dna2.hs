data Animal = Cisnal | Iguanoide | Narval
    deriving (Eq, Show)

dna2 :: [String] -> [String] -> [Int]
dna2 

main = do
    firstExtract <- words <$> getLine
    secondExtract <- words <$> getLine
    let result = dna2 firstExtract secondExtract
    print result