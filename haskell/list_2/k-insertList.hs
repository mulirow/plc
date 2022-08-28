data Tree t 
    = Nilt
    | Node t (Tree t) (Tree t)
    deriving (Read, Show)

insertElem :: Ord t => Tree t -> t -> Tree t
insertElem Nilt x = Node x Nilt Nilt
insertElem (Node root l r) x
    | x < root = Node root (insertElem l x) r
    | otherwise = Node root l (insertElem r x)

insertList :: Ord t => Tree t -> [t] -> Tree t
insertList Nilt [] = Nilt
insertList Nilt (x:xs) = insertList (insertElem Nilt x) xs
insertList (Node root l r) [] = Node root l r
insertList (Node root l r) (x:xs) = insertList (insertElem (Node root l r) x) xs
    
main = do
    a <- getLine
    b <- getLine
    let result = insertList (read a::Tree Int) (read b)
    print result