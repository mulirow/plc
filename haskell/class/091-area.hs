data Shape = Circle Float
           | Rectangle Float Float
           | Square Float
    deriving(Show)

area :: Shape -> Float
area (Circle r) = pi * r ^^ 2
area (Rectangle l h) = l * h
area (Square l) = l * l
