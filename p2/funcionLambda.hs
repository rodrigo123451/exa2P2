cuenta = (\x y z -> x * 2 - y + 10 * z)
doble = \x y-> x + y

suma = \x y-> x + y
resta = \x y-> x - y
multi = \x y-> x * y

div = \x y-> x / y
-- getnum::IO Integer
-- getnum = do
--   s <- getLine
--   return (read s)
getnum :: IO Integer
getnum = getLine >>=(\a->return (read a))
main = do
  putStr"1.- Sumar\n2.- Restar\n3.- Multiplicar\n4.- Dividir\n>\n"
  print"que quiere hacer: "
  opc <- getnum
  putStr"Ingrese el valor 1 :\n"
  numero1 <- getnum
  putStr"Ingrese el valor 2:\n"
  numero2 <- getnum
   
  let suma1=[suma numero1  numero2]
  let resta1=[resta numero1  numero2]
  let multiplica1=[multi numero1  numero2]
  --let divide=[c `div` d | c <- [numero1], d <- [numero2]]
  let divide1=[Prelude.div numero1  numero2]
  --funcion por pasos
  let resultado
        | opc==1 = suma1
        | opc==2 = resta1
        | opc==3 = multiplica1
        | opc==4 = divide1
        | otherwise = []
  putStrLn ("Resultado:" ++ show(resultado))