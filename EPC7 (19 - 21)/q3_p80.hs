{- ######################################################################
Aluno: Michael Lesley
a função recebe uma linha e um ponto x na reta e devolve o ponto y correspondente
######################################################################### -}
-- funcao da reta 
-- (y − y1)=(x − x1) = (y2 − y1)=(x2 − x1)
-- isolando y, temos: ( (y2 - y1) * (x - x1) / (x2 -x1) ) + y1

type Ponto = (Float, Float)
type Linha = (Ponto, Ponto)

valorY :: Float -> Linha -> Float
valorY x ((x1, y1), (x2,y2)) = ( (y2 - y1) * (x - x1) / (x2 -x1) ) + y1

main :: IO ()
main = do
putStr "ponto A: "
p1 <- readLn
putStr "ponto B: "
p2 <- readLn
putStr "valor de x : "
val <- readLn
let linha = (p1,p2)
putStrLn ( show(valorY val linha) )

-- (1,2)
-- (4,4)
-- 2.5 um ponro C sobre a reta que tem o valor x = 3 em sua coordenada , qual sera o valor de y do ponto C? 
-- 3 
