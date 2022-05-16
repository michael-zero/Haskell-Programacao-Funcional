-- Aluno: Michael Lesley 
-- 4. Defina a função product :: [Int] -> Int que retorna o produto de uma lista de inteiros

productX :: [Int] -> Int
productX [] = 1 -- multiplica por 1 no final 
productX (elemento : cauda) = elemento * productX cauda -- se n for vazia 

main :: IO ()
main =  do
putStr "O produto dos elementos da seguinte lista é: "
print(productX [2,3,5,7])

--Example
-- productX [2,3,5,7] = 2 * productX [3,5,7]
-- = 2   * 3 * productX [5,7]
-- = 6   * productX [5,7]
-- = 6   * 5 * productX [7]
-- = 30  * productX [7]
-- = 30  * 7 * productX [ ]
-- = 210 * productX [ ]
-- = 210 * 1  =: OBSERVE QUE se a lista vazia retornasse 0, ia zerar o produto dos elementos
-- = 210