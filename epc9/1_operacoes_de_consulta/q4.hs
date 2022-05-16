{- ######################################################################
Aluno: Michael Lesley de Macedo Barbosa
q4.hs
a função quantLivrosEmprestado uma função que informa a quantidade de livros que uma determinada pessoa 
tomou emprestado.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Xico", "A Mente Nova do Rei"),("Anastacia", "O Segredo de Luiza"),("Xico", "O Pequeno Principe"), ("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Nelson", "No Topo dos Montes")]

quantLivrosEmprestado :: BancodeDados -> Cliente -> Int
quantLivrosEmprestado [ ] _ = 0
quantLivrosEmprestado ((inquilino, titulo) : resto) fulano
    |inquilino == fulano = 1 + quantLivrosEmprestado resto fulano
    |otherwise = 0 + quantLivrosEmprestado resto fulano


main :: IO ()
main =  do
print(quantLivrosEmprestado teste "Xico")