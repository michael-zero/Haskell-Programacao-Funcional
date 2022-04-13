{-
Aluno: Michael Lelsey 
2. Defina uma função numEquallMax :: Int -> Int -> Int -> Int
onde numEquallMax n m p retorna a quantidade de números iguais ao máximo entre n, m e p.

Basicamente queremos encontrar a quantidade numeros iguais ao maximo entre tres numeros

-}


--Função auxiliar 
numEquallMaxAux :: Integer -> Integer -> Integer -> Integer -> Integer
numEquallMaxAux x y z m
    | (x == m) && (y == m) && (z == m) = 3
    | ((x == m) && (y == m)) || ((x == m) && (z == m)) || ((y == m) && (z == m)) = 2
    | otherwise = 1

-- Função principal
numEquallMax :: Integer -> Integer -> Integer -> Integer
numEquallMax x y z = numEquallMaxAux x y z (max x (max y z)) -- dado 3 numeros obtem-se o maximo de 2 
--ex: 3 0 1 -> max 3 (max 0 1) -> max 3 1 -> maximo = 3 
-- chama a funcao auxiliar
-- 3 0 1 3
-- agora a funcao principal so deve comparar a qtd de numeros que sao iguais ao maximo .. onde so tem 3 possibilidades
-- todos, dois, um
    
main :: IO ()
main =  do
putStr "A quantidade de números iguais ao maior deles é: "
print(numEquallMax 3 0 1)