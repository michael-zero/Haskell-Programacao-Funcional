{-#########################################################################
Aluno: Michael Lesley
1. Defina uma função para encontrar a semana em que ocorreu a venda máxima entre a
semana 0 e a semana n. O que sua função faz se houver mais de uma semana com vendas
máximas?
#########################################################################-}

{-
 O que sua funçao faz se houver mais de uma semana com vendas maximas?
 R- Ele retorna a última semana com maior valor. 
-}

-- semanas 
venda :: Int -> Int 
venda 0 = 7 -- semana 1 
venda 1 = 2 -- semana 2 
venda 2 = 7 -- semana 3

-- obtem a semana com maior venda com o auxilio da função MaximoH
maiorVenda :: Int -> Int
maiorVenda n
    | n == 0 = venda 0
    | otherwise = maximoH (venda n) (maiorVenda(n-1))

-- obtem o maximo entre dois numeros 
maximoH :: Int -> Int -> Int
maximoH x y
    | x >= y = x
    | otherwise = y

-- obtem a semana com venda maxima 
semanaComVendaMaxima :: Int -> Int
semanaComVendaMaxima n 
    | n == 0 = 0 -- se for 0, entao retorne zero
    | maiorVenda n == venda n = n -- se a maior venda for igual valor da venda da semana atual, retore a semana 
    | otherwise = semanaComVendaMaxima (n-1) -- se nao for nenhuma das condicoes, pega a semana anterior 

-- semanaComVendaMaxima 2 