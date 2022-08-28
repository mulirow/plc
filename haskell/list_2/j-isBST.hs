data Tree t 
    = Nilt
    | Node t (Tree t) (Tree t)
    deriving (Read)

collapse :: Tree t -> [t]
collapse Nilt = []
collapse (Node root left right) = collapse left ++ [root] ++ collapse right

checkAscending :: Ord t => [t] -> Bool
checkAscending [] = True
checkAscending (x:[]) = True
checkAscending (x:y:xs) = (x <= y) && checkAscending (y:xs)

isBST :: Ord t => Tree t -> Bool
isBST Nilt = True
isBST (Node root l r) = checkAscending (collapse (Node root l r)) 

main = do
       s <- getLine
       let result = isBST (read s::Tree Int)
       print result