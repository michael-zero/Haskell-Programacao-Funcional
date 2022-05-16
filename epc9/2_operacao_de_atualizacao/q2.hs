{- ######################################################################
Aluno:  Michael Lesley de Macedo Barbosa
q2.hs
Uma função que atualiza a base de dados quando um livro é devolvido.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Paulo", "A Mente Nova do Rei"),("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Mauro", "O Capital"),("Francisco", "O Auto da Compadecida"),("Helson", "No Topo dos Montes")]

devolveLivro :: BancodeDados -> Cliente -> Livro -> BancodeDados
devolveLivro [ ] ful tit = error "Nao ha livro emprestado"
devolveLivro ((p, t): r) f l
    |p == f && t == l = r
    |otherwise = (p,t) : devolveLivro r f l


main :: IO ()
main =  do
putStr "resultado: "
print(devolveLivro teste "Paulo" "A Mente Nova do Rei")