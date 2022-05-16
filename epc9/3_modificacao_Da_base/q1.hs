{- ######################################################################
Aluno: Michael Lesley
q1.hs
exista um numero maximo de livros que uma pessoa possa tomar emprestado
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Paulo", "A Mente Nova do Rei"),("Paulo", "Livro Teste"),("Paulo", "O Pequeno Principe"), ("Ana", "O Segredo de Luiza"),("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Helson", "No Topo dos Montes")]

max_livros :: Int
max_livros = 3

tomaEmprestado_livro :: BancodeDados -> Cliente -> Livro -> BancodeDados
tomaEmprestado_livro dBase pessoa titulo = (pessoa, titulo) : dBase

quantLivrosEmprestado :: BancodeDados -> Cliente -> Int
quantLivrosEmprestado [ ] _ = 0
quantLivrosEmprestado ((inquilino, titulo) : resto) fulano
    |inquilino == fulano = 1 + quantLivrosEmprestado resto fulano
    |otherwise = 0 + quantLivrosEmprestado resto fulano

tomaEmprestado :: BancodeDados -> Cliente -> Livro -> BancodeDados
tomaEmprestado db cliente livro 
    | quantLivrosEmprestado db cliente >= max_livros = db
    | quantLivrosEmprestado db cliente < max_livros = tomaEmprestado_livro db cliente livro


main :: IO ()
main =  do
print("Paulo tentou pegar [Livro sobre algo]:")
print(tomaEmprestado teste "Paulo" "Livro sobre algo")
print("Ana tentou pegar [Livro sobre algo]:")
print(tomaEmprestado teste "Ana" "Livro sobre algo")