{- #####################################
Aluno: Michael Lesley
5. Dê uma definição para a função quantosIguais aplicada a três entradas inteiras e que
retorna quantas delas são iguais.

A base é a função todosIguais da questão 2, visto que se for todos iguais, então retorna 3 
Dai temos outro caso que é quando nao temos 3 iguais, logo podemos ter 2.. e pegamos em pares..
e por fim, o default: quando nao temos nenhum.. entao retorna ZERO
3 3 2 => 3 == 3 sim , 3 == 2 nao .. FALSE , vai para o segundo caso 
3 == 3 sim (entao temos 2) finaliza!! Lazy n olha o resto
2 iguais 
######################################## -}
quantosIguais :: Int -> Int -> Int -> Int
quantosIguais x y z
    | (x == y && y == z) = 3 --todosIguais--
    | (x == y) || (x == z) || (y == z) = 2 --compara os pares--
    | otherwise = 0 --se nao for nenhum, retorna 0 --

main :: IO ()
main =  do
putStr "Quantos números são iguais?\nResposta: "
print(quantosIguais 3 1 3)