{- #####################################
Aluno: Michael Lesley
1. Dê a definição da função todosQuatroIguais usando a definição da função todosIguais,
vista na subseção anterior.

A funcao todosIguais recebe 3 parametros e verifica se sao iguais..
Basta adaptar a todosQuatroIguais para para chamar o todosIguais passando
3 parametros ..
######################################## -}

todosIguais :: Int -> Int -> Int -> Bool
todosIguais n m p = (n == m) && (m == p)

todosQuatroIguais :: Int -> Int -> Int -> Int -> Bool
todosQuatroIguais x y z w = ((todosIguais x y z) && (todosIguais x y w))

main :: IO ()
main =  do
putStr "Todos os números são iguais?\nResposta: "
print(todosQuatroIguais 7 7 0 7)