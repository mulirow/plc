data Cmd 
    = Cursor Int
    | Backspace Int
    | Delete Int
    | Insert String
    deriving (Read)

applyCmd :: (String, Int) -> Cmd -> (String, Int)
applyCmd (s, cur) (Cursor n) = (s, cur + n)
applyCmd (s, cur) (Backspace n) = (take (cur - n) s ++ drop cur s, cur - n)
applyCmd (s, cur) (Delete n) = (take cur s ++ drop (cur + n) s, cur)
applyCmd (s, cur) (Insert str) = (take cur s ++ str ++ drop cur s, cur)

editText :: String -> [Cmd] -> String
editText s (x:xs) = fst (foldl applyCmd (s, 0) (x:xs))

main = do
       a <- getLine
       b <- getLine
       let result = editText a (read b)
       print result