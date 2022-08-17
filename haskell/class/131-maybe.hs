safeDiv :: Integral t => t -> t -> Maybe t
safeDiv x y
    | y /= 0 = Just (x `div` y)
    | otherwise = Nothing

safeTail :: Eq t => [t] -> Maybe [t]
safeTail l
    | l /= [] = Just (tail l)
    | otherwise = Nothing

applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

teste = (Just 33 `applyMaybe` (\x -> safeDiv 10000 x) `applyMaybe` (\y -> Just $ show y) `applyMaybe` safeTail) == Just "03"
