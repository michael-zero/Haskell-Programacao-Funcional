-- 1. Defina uma fun¸c~ao somaTriplas que soma os elementos de uma lista de triplas de n´umeros,
-- (c, d, e).
somaTriplasAux :: (Int, Int, Int) -> Int
somaTriplasAux (c, d, e) = c + d + e

somaTriplas :: [(Int, Int, Int)] -> Int
somaTriplas [] = 0
somaTriplas (a : x) = (somaTriplasAux a) + (somaTriplas x)

main :: IO ()
main =  do
putStr "A soma de todos os elementos da seguinte lista é:\n"
print(somaTriplas [(2, 2, 2), (2, 2, 2), (2, 2, 2)])