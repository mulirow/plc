import Prelude hiding (Maybe(..))
import Data.Char

data Maybe a
    = Just a
    | Nothing
    deriving(Show)

eval :: Int -> String -> Int -> IO()
eval a "sum" b = putStr (show (Just (a+b)))
eval a "sub" b = putStr (show (Just (a-b)))
eval a "mul" b = putStr (show (Just (a*b)))
eval a "div" b
    | b /= 0 = putStr (show (Just (a `div` b)))
    | otherwise = putStr "Nothing"
eval a _ b = putStr "Nothing"

safeCalc :: String -> IO()
safeCalc s = eval x operator y
    where x = read (takeWhile (isDigit) s)
          operator = takeWhile (not . isDigit) (dropWhile (isDigit) s)
          y = read (dropWhile (not . isDigit) (dropWhile (isDigit) s))
          
main = do
    a <- getLine
    safeCalc a