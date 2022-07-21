getWord :: String -> String

dropWord :: String -> String

dropSpace :: String -> String

type Word = String

splitWords :: String -> [Word]



type Line = [Word]

getLine :: Int -> [Word] -> Line

dropLine :: Int -> [Word] -> [Word]

splitLines :: [Word] -> [Line]

fill :: String -> [Line]
fill st = splitLines (splitWords st)

joinLines :: [Line] -> String