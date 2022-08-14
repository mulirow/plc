class Visible t where
    toString :: t -> String
    size :: t -> Int

instance Visible Char where
    toString ch = [ch]
    size _ = 1

instance Visible Bool where
    toString True = "True"
    toString False = "False"
    size _ = 1
