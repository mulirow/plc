type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]

baseExemplo :: BancoDados
baseExemplo =
    [("Sergio","O Senhor dos Aneis"),
     ("Andre","Duna"),
     ("Fernando","Jonathan Strange & Mr.  Norrell"),
     ("Fernando","A Game of Thrones")]
-- livros emprestados

livros :: BancoDados -> Pessoa -> [Livro]
livros bd p = [snd(x) | x <- bd, fst(x) == p]

emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos bd l = [fst(x) | x <- bd, snd(x) == l]

emprestado :: BancoDados -> Livro -> Bool
emprestado bd l = emprestimos bd l /= []

qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos bd p = length (livros bd p)

emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar bd p l = (p, l) : bd

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver bd p l = [x | x <- bd, x /= (p, l)]

{-
getWord :: String -> String
getWord [] = []
getWord (ch:chs) | ch /= ' ' = ch : getWord chs
                 | otherwise = []

dropWord :: String -> String
dropWord [] = []
dropWord (ch:chs) | ch /= ' ' = dropWord chs
                  | otherwise = ch:chs

rev :: [t] -> [t]
rev [] = []
rev (a:as) = rev as ++ [a]

rep 0 ch = []
rep n ch = ch : rep (n-1) ch
-}