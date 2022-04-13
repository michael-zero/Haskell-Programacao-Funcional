{--  Aluno: Michael Lesley 
2. Defina uma função charParaInt :: Char -> Int que converte um dígito em seu valor (por exemplo, ’8’ em 8).
O valor de um caractere não dígito deve ser 0 (zero) --}

-- Fontes: Livro do Vieira e Tabela Ascii
-- para ser numero tem que ser >= 48 e <= 57
-- read: converte caractere para um tipo T 

charToInt :: Char -> Int
charToInt c
    | fromEnum c >= 48 && fromEnum c <= 57 = read [c] --se estiver no intervalo numero ok!, converte para o tipo
    | otherwise = 0 -- manda 0 se n tem 
    
main :: IO ()
main =  do
putStr "charToInt: "
print(charToInt '8')

putStr "charToInt: "
print(charToInt 'c')