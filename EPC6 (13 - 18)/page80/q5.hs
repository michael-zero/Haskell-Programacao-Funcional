{--
Aluno: Michael Lesley
Defina uma função emTresLinhas :: String -> String -> String -> String que toma três strings como argumento 
e retorna uma única string mostrando as três em linhas separadas
--}

emTresLinhas :: String -> String -> String -> String
emTresLinhas s1 s2 s3 = s1 ++ "\n" ++ s2 ++ "\n" ++ s3 ++ "\n"

main :: IO ()
main =  do
putStr(emTresLinhas "String 1" "String 2" "String 3")