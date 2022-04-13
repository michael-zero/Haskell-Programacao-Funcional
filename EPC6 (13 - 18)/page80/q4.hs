{--
Aluno: Michael Lesley
4. Defina uma função romanoParaString :: Char -> String que converte um algarismo
romano em sua representação em Português. Por exemplo, romanoParaString ′V ′ = "cinco" --}

romanoParaString :: Char -> String
romanoParaString c
    | c == 'I' = "Um"
    | c == 'V' = "Cinco"
    | c == 'X' = "Dez"
    | c == 'L' = "Cinquenta"
    | c == 'C' = "Cem"
    | c == 'D' = "Quinhentos"
    | c == 'M' = "Mil"
    | otherwise = "Nao eh algarismo romano"
    
main :: IO ()
main =  do
putStr "romanoParaString: \n"
print(romanoParaString 'I')
print(romanoParaString 'V')
print(romanoParaString 'X')
print(romanoParaString 'L')
print(romanoParaString 'C')
print(romanoParaString 'D')
print(romanoParaString 'M')
print(romanoParaString 'K')