{-
Aluno: Michael Lesley
1. Dê a definição de uma função nAnd :: Bool -> Bool -> Bool que dá o resultado True,
exceto quando seus dois argumentos são ambos True.
-}

-- Uma operação NAND é igual a uma operação OR com todas as entradas invertidas;
--- NAND ---
-- 0 0 : 1
-- 0 1 : 1
-- 1 0 : 1
-- 1 1 : 0

nAnd :: Bool -> Bool -> Bool
nAnd x y = (not x) || (not y)

main :: IO ()
main =  do
putStr "nAnd:  "
print(nAnd True False)