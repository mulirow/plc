data Tree t
    = Nilt
    | Node t (Tree t) (Tree t)
    deriving (Read)

depth :: Tree t -> Int
depth Nilt = 0
depth (Node root left right) = max (depth left) (depth right) + 1

diameter :: Ord t => Tree t -> Int
diameter Nilt = 0
diameter (Node root left right) = max (dleft + dright + 1) (max (diameter left) (diameter right))
    where dleft = depth left
          dright = depth right

main = do
    s <- getLine
    let result = diameter (read s::Tree Int)
    print result