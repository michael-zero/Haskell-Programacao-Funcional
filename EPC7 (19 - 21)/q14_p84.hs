{- =######################################################################
Aluno: Michael Lesley 
a função recebe uma linha e um ponto x na reta e devolve o ponto y correspondente
fonte: https://mundoeducacao.uol.com.br/matematica/funcao-2-grau.htm#:~:text=Definimos%20como%20fun%C3%A7%C3%A3o%20do%202%C2%BA,%3D%20ax%C2%B2%20%2Bbx%20%2Bc.
######################################################################### -}
--com base nos valores do zero da funcao, identificar se sao iguais , distintas ou imaginiarias
raizesFuncao :: (Double, Double,Double) -> (Double, Double, String)
raizesFuncao (a, b, c)
    | delta < 0 = (x1, x2, "A funcao nao possui raiz real.")
    | delta == 0 =  (x1, x2, "A funcao possui uma unica raiz real")
    | otherwise =  (x1, x2, "A funcao possui duas raizes reais distintas")
    where
        x1 = (-b - sqrt delta) / (2*a) -- primeira raiz
        x2 = (-b + sqrt delta) / (2*a) --segunda raiz
        delta = b**2 - 4*a*c --calculo do delta

main :: IO ()
main = do
putStr "Digite os coeficientes a,b,c da equacao do 2 grau: "
p1 <- readLn
putStrLn ( show(raizesFuncao p1) )

--1,2,-3
--raizes reais distintas
--(1,2,-3)