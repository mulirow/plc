module Set where

data Set t = Set [t]
    deriving (Show)

removeDup :: Eq t => [t] -> [t]
removeDup [] = []
removeDup (a : as) = a : removeDup [x | x <- as, x /= a]

eq_3 :: Eq t => t -> t -> t -> Bool
eq_3 a b c = (a == b) && (b == c)

instance Eq t => Eq (Set t) where
    (Set []) == (Set []) = True
    (Set set_a) == (Set set_b) = eq_3 (length (removeDup set_a)) (length (removeDup set_b)) pairs
        where pairs = length [(x, y) | x <- removeDup set_a, y <- removeDup set_b, x == y]