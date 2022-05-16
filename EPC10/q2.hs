{- ######################################################################
Aluno: Michael Lesley de Macedo Barbosa
q2.hs
Uma função que atualiza a base de dados quando um livro é devolvido.
######################################################################### -}

type Cliente = String
type Livro = String
type BancodeDados = [(Cliente, Livro)]

teste :: [(String, String)]
teste = [("Saulo", "A Mente Nova do Rei"),("Luzia", "O Segredo de Luiza"),("Saulo", "O Pequeno Principe"), ("Luis", "O Capital"),("Xiquim", "O Auto da Compadecida"),("Gerson", "No Topo dos Montes")]

devolveLivroZF :: BancodeDados -> Cliente -> Livro -> BancodeDados
devolveLivroZF db c l = [ (pes,liv) |  (pes, liv) <- db, not (pes == c && liv == l) ]

main :: IO ()
main =  do
putStr "resultado: "
print(devolveLivroZF teste "Saulo" "A Mente Nova do Rei")