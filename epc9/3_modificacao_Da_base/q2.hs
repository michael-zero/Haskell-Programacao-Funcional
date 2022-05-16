{- ######################################################################
Aluno: Michael Lesley de Macedo Barbosa
q1.hs
exista uma lista de palavras-chave associadas a cada livro, de forma que cada livro possa
ser encontrado atraves das palavras-chave a ele associadas
######################################################################### -}

type Livro = (String,String)
type Cliente = String
type BancodeDados = [(Cliente, (Livro))]

teste :: [(String, (String,String))]
teste = [("Paulo", ("Mente Rei", "A Mente Nova do Rei")),("Paulo", ("Principe", "O Pequeno Principe")), ("Ana", ("Segredo", "O Segredo de Luiza")),("Mauro",("Capital", "O Capital")),("Francisco", ("O Auto", "O Auto da Compadecida")),("Helson", ("Topo Montes", "No Topo dos Montes"))]

encontrarLivro ::  BancodeDados -> String -> String
encontrarLivro [] _ = "Nao ha livros que batem com essa palavra-chave"
encontrarLivro ((cliente, (id, livro)):r) id_procurado
    | id_procurado == id = livro
    | otherwise = encontrarLivro r id_procurado

main :: IO ()
main =  do
print(encontrarLivro teste "Mente Rei")
print(encontrarLivro teste "Reizinho Delas")