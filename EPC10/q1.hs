{- ######################################################################
Aluno: Michael Lesley de Macedo Barbosa
q1.hs
Uma funcao que atualiza a base de dados, quando um livro e emprestado a alguem.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Paulo", "A Mente Nova do Rei"),("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Helson", "No Topo dos Montes")]

tomaEmprestado :: BancodeDados -> Cliente -> Livro -> BancodeDados
tomaEmprestado dBase pessoa titulo = (pessoa, titulo) : dBase

-- tomaEmprestadoZF :: BancodeDados -> Cliente -> Livro -> BancodeDados
-- tomaEmprestadoZF dBase pessoa titulo = [ (pes, liv) | (pes, liv) <- (dBase : (pessoa,titulo)) ]

tomaEmprestadoZF :: BancodeDados -> Cliente -> Livro -> BancodeDados
tomaEmprestadoZF dBase pessoa titulo = [ (pes, liv) | (pes, liv) <- (pessoa,titulo) : dBase  ]

main :: IO ()
main =  do
print(tomaEmprestadoZF teste "Paulo" "Livro sobre algo")