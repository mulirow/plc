createString :: Int -> Char -> String
createString 0 c = ""
createString n c = [c] ++ createString (n-1) c

isReplica :: String -> Int -> Char -> Bool
isReplica [] 0 c = True
isReplica [] n c = False
isReplica (x:xs) n c | (x:xs) == createString n c = True
                     | otherwise = False