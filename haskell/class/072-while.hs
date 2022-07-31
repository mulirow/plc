takeWhile' :: (t -> Bool) -> [t] -> [t]
takeWhile' p [] = []
takeWhile' p (x:xs)
    | p x = x : takeWhile' p xs
    | otherwise = []

dropWhile' :: (t -> Bool) -> [t] -> [t]
dropWhile' p [] = []
dropWhile' p (x:xs)
    | p x = dropWhile' p xs
    | otherwise = x:xs

getWord :: String -> String
getWord s = takeWhile' (/=' ') s

dropWord :: String -> String
dropWord s = dropWhile' (/=' ') s

dropSpace :: String -> String
dropSpace s = dropWhile' (==' ') s