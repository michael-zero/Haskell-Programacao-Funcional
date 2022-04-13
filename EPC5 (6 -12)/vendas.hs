venda :: Int -> Int 
venda 0 = 7
venda 1 = 2
venda 2 = 5

--Example 1 
totaldeVendas :: Int -> Int
totaldeVendas n 
 | n == 0 = venda 0
 | n > 0 = totaldeVendas (n - 1) + venda n
 | otherwise = 0

 -- Example 2
maiorVenda :: Int -> Int
maiorVenda n
    | n == 0 = venda 0
    | otherwise = maximoH (venda n) (maiorVenda(n-1))
 
maximoH :: Int -> Int -> Int
maximoH x y
    | x >= y = x
    | otherwise = y



main :: IO ()
main =  do
putStr "Vendas = "
-- print(totaldeVendas 2) -- tot 1 + venda 2 => (tot 0 + v1) + v2 => (v0 + v1) + v2 => (7 + 2) + v2 => 9 + v2 => 9 + 5 = 14
-- print(maiorVenda 2) -- maior(2) => max(5,maior(1)) => max(5, max(2, 7)) => max(5, 7) => 7