{- ######################################################################
Aluno: Michael Lesley de macedo
Uma funçao que informa todas as pessoas que tomaram emprestado um determinado livro.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Paulo", "A Mente Nova do Rei"),("Felipe", "A Mente Nova do Rei"),("Gustavo", "A Mente Nova do Rei"),("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Helson", "No Topo dos Montes")]

pessoasComLivro :: BancodeDados -> Livro -> [Cliente]
pessoasComLivro [ ] _ = [ ]
pessoasComLivro ((inquilino, titulo) : resto) livro
    | titulo == livro = inquilino : pessoasComLivro resto livro
    | otherwise = pessoasComLivro resto livro

main :: IO ()
main =  do
print(pessoasComLivro teste "A Mente Nova do Rei")