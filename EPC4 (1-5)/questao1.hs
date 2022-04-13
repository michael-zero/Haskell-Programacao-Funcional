
{- #####################################
Aluno: Michael Lesley
1. Dê a definição da função todosQuatroIguais do tipo Int -> Int -> Int -> Int -> Bool
que dá o resultado True se seus quatro argumentos forem iguais.

Ao receber 4 inteiros como parametro:
a. todosQuatroIguais 1 1 1 1
b. Fazer comparações em pares 
c. 1 1 ? sim! Repete isso para x-y,x-z,x-w
d. 1 1 ? y-z, y-w
e. 1 1 ? z-w  
##################################### -}

todosQuatroIguais :: Int -> Int -> Int -> Int -> Bool
todosQuatroIguais x y z w = ((x == y) && (x == z) && (x == w) && (y == z) && (y == w) && (z == w))

main :: IO ()
main =  do
putStr "Todos os quatro números são iguais?\nResposta: "
print(todosQuatroIguais 1 1 1 1)