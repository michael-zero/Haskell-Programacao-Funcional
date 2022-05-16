{- ######################################################################
Aluno:  Michael Lesley de Macedo Barbosa
q1.hs
exista uma lista de palavras-chave associadas a cada livro, de forma que cada livro possa
ser encontrado atraves das palavras-chave a ele associadas
######################################################################### -}

type Pessoa = String
type Livro = String
type Data = (Int,Int,Int)
type BancodeDados = [(Pessoa, Livro, Data)]

teste = [("Paulo", "A Mente Nova do Rei", (20,04,2022)), ("Ana", "O Segredo de Luiza",(18,04,2022)),("Paulo", "O Pequeno Principe", (18,05,2022)), ("Mauro", "O Capital", (29,04,2022)),("Francisco", "O Auto da Compadecida", (20,04,2022))]

dataDeEmprestimoVencida :: BancodeDados -> Data -> [Livro]
dataDeEmprestimoVencida [] _ = []
dataDeEmprestimoVencida ((pessoa, livro, (dia,mes,ano)):r) (dia_v, mes_v, ano_v)
    | ano <= ano_v && mes <= mes_v && dia <= dia_v = livro : dataDeEmprestimoVencida r (dia_v, mes_v, ano_v)
    | otherwise = dataDeEmprestimoVencida r (dia_v, mes_v, ano_v)

main :: IO ()
main =  do
print(dataDeEmprestimoVencida teste (21,04,2022))