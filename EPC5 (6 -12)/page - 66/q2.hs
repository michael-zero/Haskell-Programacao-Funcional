{- ######################################################################
Aluno: Michael Lesley
2. Defina uma função para encontrar uma semana sem vendas entre as semanas 0 e n. Se
não existir tal semana, o resultado deve ser n + 1.

semanaSemVenda pega a quantidade de semanas que deseja verificar e verifica se existe uma semana
com valor zero e retorna ela, caso não existir retornar n+1
######################################################################### -}

venda :: Int -> Int
venda 0 = 5
venda 1 = 4
venda 2 = 1
venda 3 = 2
venda 4 = 1
venda 5 = 7

semanaSemVenda :: Int -> Int
semanaSemVenda n
    | n == 0 && venda n == 0 = 0 -- se a semana for 0 e a venda for 0, retorne 0 
    | n == 0 && venda n /= 0 = 1 -- se a semana for 0 e a venda for diferente de 0, retorne 1 *no caso ele soma com 1 ..
    | venda n == 0 = n --se a ultima semana tiver venda 0, retorne a semana
    | semanaSemVenda (n-1) == n = n + 1  --se n tiver , retorne n+1
    | otherwise = semanaSemVenda (n-1) --pega a semana anterior

-- 5
-- v(5) == 0  - False
-- s(5-1) == 5  - F 
-- s(4) 
-- s(4) == 0  F  
-- s(4-1) == 4 F 
-- s(3)
-- s(3) == 0 F
-- s(3 - 1) == 3 F 
-- s(2)
-- s(2) == 0  TRUE -> return 2 
