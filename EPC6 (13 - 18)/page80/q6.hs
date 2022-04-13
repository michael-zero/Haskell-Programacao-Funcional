{--
Aluno: Michael Lesley
Defina uma função replica :: String -> Int -> String que toma uma string e um
número natural n e retorna n cópias da string, todas juntas. Se n for 0, o resultado deve
ser a string vazia (), se n for 1, retorna a própria string.
 --}

 -- Example 
 -- zero 2
 -- zerozero
 -- zero 0
 -- empty string
 -- zero 1 
 -- zero

replica :: String -> Int -> String
replica s n 
    | n <= 0 = ""
    | otherwise = s ++ replica s (n-1) --decrementa e concantena a string 
    
main :: IO ()
main =  do
putStr "replica: "
print(replica "String" 3)