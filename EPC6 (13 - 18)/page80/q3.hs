{--
Aluno: Michael Lesley 
3. Defina uma função imprimeDigito :: Char -> String que converte um dpigito em sua
representação em português. Por exemplo, ’5’ deve retornar "cinco" --}

imprimeDigito :: Char -> String
imprimeDigito c
    | c == '0' = "Zero"
    | c == '1' = "Um"
    | c == '2' = "Dois"
    | c == '3' = "Tres"
    | c == '4' = "Quatro"
    | c == '5' = "Cinco"
    | c == '6' = "Seis"
    | c == '7' = "Sete"
    | c == '8' = "Oito"
    | c == '9' = "Nove"
    | otherwise = "Nao eh digito"
    
main :: IO ()
main =  do
putStr "imprimeDigito: \n"
print(imprimeDigito '1')
print(imprimeDigito '2')
print(imprimeDigito '3')
print(imprimeDigito '4')
print(imprimeDigito '5')
print(imprimeDigito '6')
print(imprimeDigito '7')
print(imprimeDigito '8')
print(imprimeDigito '9')
print(imprimeDigito 'r')