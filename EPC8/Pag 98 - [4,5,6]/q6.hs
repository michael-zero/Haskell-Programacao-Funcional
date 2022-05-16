--Aluno: Michael Lesley
--6. Defina a função concat :: [[Int]] -> [Int] 
--que concatena uma lista de listas de inteiros transformando-a em 
--uma lista de inteiros. 
--Por exemplo, concat[[3; 4],[2],[4; 10]] =
-- [3,4,2,4,10].

concatA :: [[Int]] -> [Int]
concatA [] = []
concatA (elemento : caudaArr) -- arr e cauda de arrays
    | ((tail elemento) == []) = ((head elemento) : concatA caudaArr) -- se a cauda for vazia .. pega a head elemento e chama a funcao para cauda do vetor pai
    | otherwise = ((head elemento) : (concatA ((tail elemento) : caudaArr)))

main :: IO ()
main =  do
putStr "A concatenação da seguinte lista é:\n"
print(concatA [[3, 4], [2], [4, 10]])