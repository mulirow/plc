btoi :: String -> Int
btoi [] = 0
btoi (x:xs) = ((fromEnum x - 48) * (2 ^ length xs)) + btoi xs