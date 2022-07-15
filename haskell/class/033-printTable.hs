sales :: Int -> Int
sales n = n*2 + 1

addSpace :: Int -> String
addSpace 0 = ""
addSpace n = " " ++ addSpace (n-1)

toRight :: Int -> String -> String
toRight n st = addSpace n ++ st

totalSales :: Int -> Int
totalSales 0 = sales 0
totalSales n = totalSales (n-1) + sales n

maxSales :: Int -> Int
maxSales 0 = sales 0
maxSales n = maxSales (n-1) `max` sales n

avgSales :: Int -> Float
avgSales n = fromIntegral (totalSales n) / fromIntegral (n+1)

header :: String
header = "Semana  Venda\n"

printWeek :: Int -> String
printWeek n = addSpace 3 ++ show n ++ addSpace 6 ++ show (sales n) ++ "\n"

printWeeks :: Int -> String
printWeeks 0 = printWeek 0
printWeeks n = printWeeks (n-1) ++ printWeek n

printTotal :: Int -> String
printTotal n = "Total" ++ addSpace 5 ++ show (totalSales n) ++ "\n"

printAvg :: Int -> String
printAvg n = "Media" ++ addSpace 6 ++ show (avgSales n) ++ "\n"
    
printTable :: Int -> String
printTable n = header
                  ++ printWeeks n
                  ++ printTotal n
                  ++ printAvg n