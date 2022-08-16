module Main where
import Set

testes1 :: Set Int
testes1 = listToSet [1,2,3,4,5,9]

testes2 :: Set Int
testes2 = listToSet [1,1,2,2,3,3,9,5,4]

main :: IO()
main = do putStrLn (show testes1)
          putStrLn (show testes2)
          putStrLn (if testes1 == testes2 then "iguais" else "diferentes")

putNtimes :: Int -> String -> IO ()
putNtimes n str
    = if n <= 1
        then putStr str
        else do putStr str
            putNtimes (n-1) str