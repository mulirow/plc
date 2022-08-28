type Comando = String
type Valor = Int

operacao :: Int -> (String, Int) -> Int
operacao x ("Multiplica", val) = x * val
operacao x ("Soma", val) = x + val
operacao x ("Subtrai", val) = x - val
operacao x ("Divide", val)
    | val /= 0 = x `div` val
    | otherwise = -666

executa :: [(String, Int)] -> Int
executa (x:xs) = foldl operacao 0 (x:xs)

main = do
    a <- getLine
    let result = executa (read a)
    print result