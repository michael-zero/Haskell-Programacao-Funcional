{- ######################################################################
Aluno: Michael Lesley
q3.hs
Uma funçao que informa se um determinado livro esta ou nao emprestado.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Sasha", "A Mente Nova do Rei"),("Zequinha", "A Mente Nova do Rei"),("Marcos", "A Mente Nova do Rei"),("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Jiraya", "O Capital"),("Bento", "O Auto da Compadecida"),("Nelson", "No Topo dos Montes")]

emprestado :: BancodeDados -> Livro -> String
emprestado [ ] _ = "Livro nao esta emprestado"
emprestado ((inquilino, titulo) : resto) livro
    | titulo == livro = "Livro esta emprestado"
    | otherwise = emprestado resto livro

main :: IO ()
main =  do
print(emprestado teste "A Mente Nova do Rei")
print(emprestado teste "Livro Teste")