{-#########################################################################
Aluno: Michael Lesley
1. Defina uma função que retorna o número de semanas nas quais foram vendidas s unidades,
para um inteiro s ≥ 0. Como você usaria esta solução para resolver o problema 3?
#########################################################################-}
{-
semanaSemVenda recebe a quantidade de semanas que deve verificar e o valor que deve procurar 
e retorna a quantidade de semanas igual ao parametro passado
######################################################################### -}

venda :: Int -> Int
venda 0 = 7 --vendeu 7
venda 1 = 2 -- vendeu 2
venda 2 = 5  -- ...
venda 3 = 0
venda 4 = 13
venda 5 = 0
venda 6 = 0

semanasComVendaS :: Int -> Int -> Int
semanasComVendaS n s
    | n == 0 && venda n == s = 1 --semana 0, vendeu o valor de s, entao retorna 1
    | n == 0 && venda n /= s = 0 -- semana 0, vendeu valor diferente de s, retorna 0
    | venda n == s && n == 0 = 1 -- venda n == s  e n == 0 , retorna 1 
    | venda n == s && n > 0 = 1 + semanasComVendaS (n - 1) s --percore as vendas de outra semana  e soma 1, se a semana vende o valor s 
    | venda n /= s && n > 0 = 0 + semanasComVendaS (n - 1) s -- soma 0 para semanas que vendeu um valor diferente de s 
    | otherwise = 0

-- semanasComVendaS 4 2 -> 1