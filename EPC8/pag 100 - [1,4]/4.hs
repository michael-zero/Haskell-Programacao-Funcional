-- Michael Lesley
-- 4. Defina uma função unzip :: [(Int, Int)] -> ([Int], [Int]) que transforma uma
-- lista de pares em um par de listas. Sugest~ao: defina antes as funções 
-- unZipLeft, unZipRight :: [(Int, Int)] -> [Int], onde unZipLeft [(2,4), (3,5), (4,78)] = [2,3,4]
-- e unZipRight [(2,4), (3,5), (4,78)] = [4,5,78].

unzipLeft :: [(Int, Int)] -> [Int]
unzipLeft [] = []
unzipLeft ((l, r) : t) = l : unzipLeft t

unzipRight :: [(Int, Int)] -> [Int]
unzipRight [] = []
unzipRight ((l, r) : t) = r : unzipRight t

unzipA :: [(Int, Int)] -> ([Int], [Int])
unzipA list = (unzipLeft list, unzipRight list)


main :: IO ()
main =  do
putStr "O unzip da seguinte lista é:\n"
print(unzipA [(2, 3), (4, 5), (6, 7)])