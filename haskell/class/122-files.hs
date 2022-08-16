{-
main :: IO()
main = 
    putStrLn "Escrevendo" >> 
    writeFile "a.txt" "Hello\nworld" >>
    appendFile "a.txt" "\nof\nHaskell"
    >> putStrLn "Lendo o arquivo" >>
    readFile "a.txt" >>=
    \x -> putStrLn x
-}

{-
main :: IO()
main = do
    putStrLn "Escrevendo"
    writeFile "a.txt" "Hello\nworld"
    appendFile "a.txt" "\nof\nHaskell"
    putStrLn "Lendo o arquivo"
    x <- readFile "a.txt"
    putStrLn x
-}

split :: (Char -> Bool) -> String -> [String]
split p s = case dropWhile p s of
    "" -> []
    s' -> w : split p s''
        where (w, s'') = break p s'

main :: IO()
main = do
    str <- readFile "a.txt"
    print (sum (map (read) (split (=='\n') str)))