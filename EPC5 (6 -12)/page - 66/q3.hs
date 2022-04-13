{- ######################################################################
Aluno: Michael Lesley
2.  Defina uma função que retorne o número de semanas sem vendas (se houver alguma).
######################################################################### -}
venda :: Int -> Int
venda 0 = 7
venda 1 = 2
venda 2 = 5
venda 3 = 0
venda 4 = 13
venda 5 = 0
venda 6 = 0

numeroSemanasSemVenda :: Int -> Int
numeroSemanasSemVenda n
    | n == 0 && venda n == 0 = 1 --se a semana for 0 e a venda for 0 , retorne 1 
    | n == 0 && venda n /= 0 = 0 --se a semana for 0 e a venda for != 0, retorne 0 ..
    | venda n == 0 && n == 0 = 1 --venda 0 e semana 0, retorne 1 
    | venda n == 0 && n > 0 = 1 + numeroSemanasSemVenda(n - 1) --venda IGUAL a 0 e semama maior que 0, vai pra a proxima (anterior) semana
    | venda n /= 0 && n > 0 = 0 + numeroSemanasSemVenda(n - 1) --venda DIFERENTE de 0 e semana maior que 0, next 
    | otherwise = 0