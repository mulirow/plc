-- 1.
type Chave = [(Char, Char)]

rot13parcial :: Chave
rot13parcial = [('a', 'n'), ('b', 'o'), ('c', 'p'), ('d', 'q'), ('e', 'r'), ('f', 's'), ('g', 't'), ('h', 'u'), ('i', 'v'), ('j', 'w'), ('k', 'x'), ('l', 'y'), ('m', 'z')]

cipher :: Chave -> String -> String
cipher _ [] = []
cipher key (x : xs)
    | match /= [] = snd (head match) : cipher key xs
    | otherwise = x : cipher key xs
        where match = [chr | chr <- key, fst chr == x]

-- exemplo: cipher rot13parcial "hello*hello"

-- ----------
-- 2.
invertTuple :: (t, t) -> (t, t)
invertTuple (x, y) = (y, x)

inverteChave :: Chave -> Chave
inverteChave key = map invertTuple key

-- exemplo: inverteChave rot13parcial

-- ----------
-- 3.
type FuncaoChave = (Char -> Char)

trocaSoLetraL :: FuncaoChave
trocaSoLetraL 'l' = 'b'
trocaSoLetraL c = c

cipherf :: FuncaoChave -> String -> String
cipherf f str = map f str

-- exemplo: cipherf trocaSoLetraL "hello*hello" ----> "hebbo*hebbo"

-- ----------
-- 4.
cipherChar :: Chave -> Char -> Char
cipherChar [] ch = ch
cipherChar ((x, y) : key) ch 
    | ch == x = y
    | otherwise = cipherChar key ch

chaveToFuncaoChave :: Chave -> FuncaoChave
chaveToFuncaoChave = cipherChar

-- exemplo: cipherf (chaveToFuncaoChave rot13parcial)

-- ----------
-- 5.
data KeyTree = Node Char Char KeyTree KeyTree | Empty

chaveParcial :: KeyTree
chaveParcial = Node 'h' 'u' (Node 'c' 'p' (Node 'b' 'o' (Node 'a' 'n' Empty Empty) Empty) (Node 'e' 'r' Empty Empty)) (Node 'l' 'y' Empty (Node 'm' 'z' Empty Empty))

cipherTChar :: KeyTree -> Char -> Char
cipherTChar Empty ch = ch
cipherTChar (Node chIn chOut l r) ch
    | ch == chIn = chOut
    | ch < chIn = cipherTChar l ch
    | otherwise = cipherTChar r ch

cipherT :: KeyTree -> String -> String
cipherT keyT str = map (\x -> cipherTChar keyT x) str

-- exemplo: cipherT chaveParcial "hello*hello"