-- 5. Defina a função and :: [Bool] -> Bool que retorna a conjunção da lista. Por exemplo,
-- and[e1,e2,...en] = e1&&e2&&...&&en.

andE :: [Bool] -> Bool
andE [] = True
andE (elemento : cauda) = elemento && andE cauda

main :: IO ()
main =  do
putStr "O and dos elementos da seguinte lista é:\n"
print(andE [True, True])
print(andE [True, False])

--Example
-- andE [True,True] = True && andE [True]
-- True && True && []
-- True && []
-- True && True
-- True 