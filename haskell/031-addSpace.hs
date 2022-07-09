addSpace :: Int -> String
addSpace 0 = ""
addSpace n = " " ++ addSpace (n-1)