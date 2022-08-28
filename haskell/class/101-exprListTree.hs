data Expr
    = Lit Int
    | Add Expr Expr
    | Sub Expr Expr

data List t
    = Nil
    | Cons t (List t)
    deriving(Show)

data Tree t
    = NilT
    | Node t (Tree t) (Tree t)
    deriving (Eq, Show)

eval :: Expr -> Int
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2
eval (Sub e1 e2) = eval e1 - eval e2

showExpr :: Expr -> String
showExpr (Lit n) = show n
showExpr (Add e1 e2) = "(" ++ showExpr e1 ++ " + " ++ showExpr e2 ++ ")"
showExpr (Sub e1 e2) = "(" ++ showExpr e1 ++ " - " ++ showExpr e2 ++ ")"

toList :: List t -> [t]
toList Nil = []
toList (Cons x xs) = x : toList xs

fromList :: [t] -> List t
fromList = foldr Cons Nil

depth :: Tree t -> Int
depth NilT = 0
depth (Node root left right) = max (depth left) (depth right) + 1

diameter :: Ord t => Tree t -> Int
diameter NilT = 0
diameter (Node root left right) = max (dleft + dright + 1) (max (diameter left) (diameter right))
    where dleft = depth left
          dright = depth right

collapse :: Tree t -> [t]
collapse NilT = []
collapse (Node root left right) = [root] ++ collapse left ++ collapse right

mapTree :: (t -> u) -> Tree t -> Tree u
mapTree _ NilT = NilT
mapTree p (Node root left right) = Node (p root) (mapTree p left) (mapTree p right)
