{- ######################################################################
Aluno: Michael Lesley de macedo
Uma funçao que informa os livros que uma determinada pessoa tomou emprestado.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Larissa", "A Mente Nova do Rei"),("Luana", "O Segredo de Luiza"),("Laura", "O Pequeno Principe"), ("Bene", "O Capital"),("Toin", "O Auto da Compadecida"),("Nara", "No Topo dos Montes")]

livrosEmprestados :: BancodeDados -> Cliente -> [Livro]
livrosEmprestados [ ] _ = [ ]
livrosEmprestados ((inquilino, titulo) : resto) fulano
    | inquilino == fulano = titulo : livrosEmprestados resto fulano
    | otherwise = livrosEmprestados resto fulano

main :: IO ()
main =  do
print(livrosEmprestados teste "Nara")