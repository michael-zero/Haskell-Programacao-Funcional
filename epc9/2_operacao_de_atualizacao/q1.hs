{- ######################################################################
Aluno: Michael Lesley 
Uma funcao que atualiza a base de dados, quando um livro e emprestado a alguem.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Saulo", "A Mente Nova do Rei"),("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Gelson", "No Topo dos Montes")]

tomaEmprestado :: BancodeDados -> Cliente -> Livro -> BancodeDados
tomaEmprestado dBase pessoa titulo = (pessoa, titulo) : dBase

main :: IO ()
main =  do
print(tomaEmprestado teste "Saulo" "Livro sobre algo")