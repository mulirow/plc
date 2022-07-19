type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

coordX :: (Float, Float) -> Float
coordX (a, b) = a

coordY :: (Float, Float) -> Float
coordY (a, b) = b

isVertical :: Reta -> Bool
isVertical r | fst (fst r) == fst (snd r) = True
             | otherwise = False

pontoY :: Float -> Reta -> Float
pontoY x ((x1, y1), (x2, y2))
    | (x1 == x2) = read "Infinity"
    | otherwise = (x - x1) * (y2 - y1) / (x2 - x1)