{-
Aluno: Michael Lelsey 
3. Como você simplificaria a função 
funny:: Integer -> Integer -> Integer -> Bool
funny x y z 
 | x > z = True  
 | y >= x = False
 | otherwise = True 
-}

-- 3 5 7 
-- 3 > 7 - True (x > z)
-- 5 >= 3 - False (y >= x)
-- retur True

-- ao inves de ter 3 casos , sendo dois para true
-- torna um unico caso para false que é quando x <= z que equivale x > z 


funny :: Integer -> Integer -> Integer -> Bool
funny x y z 
    | (y >= x) && (x <= z) = False
    | otherwise = True
    
main :: IO ()
main =  do
putStr "Funny: "
print(funny 3 1 6) --x y z