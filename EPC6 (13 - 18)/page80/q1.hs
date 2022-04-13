{-- 

Aluno: Michael Lesley 
1. Defina uma função para converter letras minúsculas em maiúsculas e que retorne o próprio caractere se a 
entrada não for um caractere minúsculo --}

---- FONTES --------
-- LINK:  http://www.decom.ufop.br/marco/site_media/uploads/extensao/04_aula_04.pdf
-- ASCII  https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.m.wikipedia.org%2Fwiki%2FFicheiro%3AASCII-Table-wide.svg&psig=AOvVaw3Mn8uZHHH-erLDItMkoaiy&ust=1648991601607000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPCixca69fYCFQAAAAAdAAAAABAX

getUpperCase :: Char -> Int
getUpperCase c --from enum converte para int  
    | fromEnum c - 32 >= 65 = fromEnum c - 32 -- remove os caracteres nao imprimiveis e maior >= 65 tem que ser maiusculo, se a difereca
    --deu certo, entao tem maisculo!
    | otherwise = fromEnum c --senao retorna c 

toUpperCase :: Char -> Char --converte para maiusuculom, recebe o codigo e retorna em formato char
toUpperCase c = toEnum (getUpperCase c)
    
main :: IO ()
main =  do
putStr "toUpperCase c: "
print(toUpperCase 'c')

putStr "toUpperCase C: "
print(toUpperCase 'C')