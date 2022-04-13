{- ######################################################################
Aluno: Michael Lesley
o programa retorne a norma de um vetor dado por suas coordenadas.
######################################################################### -}
--A norma ou módulo de um vetor é o comprimento desse vetor,
--que pode ser calculado por meio da distância de seu ponto final até a origem.
-- |v| = √(a2 + b2)
--  "readLn" quando executada, interage com o mundo extraindo a próxima linha disponível na
-- entrada padrão e retorna um valor obtido dessa string.

normaVetor :: (Float,Float) -> Float
normaVetor (x, y) = sqrt( (x*x) + (y*y) )

main :: IO ()
main =  do
putStr "X: "
sel <- readLn
putStr "Y: "
sel2 <- readLn
putStrLn ( show( normaVetor (sel,sel2) ) )