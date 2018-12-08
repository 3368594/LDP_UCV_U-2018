------------------------ Enunciado del Problema
--Escriba una función dividir, que dados una lista no decreciente xsy un elemento x,
-- devuelva una dupla de dos listas (ys,zs), con xs = ys ++ zs, donde todos los elementos de 
--yssean menores o iguales que x, y todos los elementos de zssean mayores que x.

-------------------------------- Explicación

-- Dado un Elemento y una lista no decreciente retorna una tupla (x,y) donde x son los elementos menores al elemento dado y Y 
-- los elementos mayores al elemento dado

------------------------------ Llamadas de Ejemplo 

--E:dividir 3 [1,2,3,4,5,6,,7] S:([1,2,3],[4,5,6,7])
--E:dividir (2,2) [(1,1),(1,2),(2,2),(2,3),(3,1),(3,2)] S:([(1,1),(1,2),(2,2)],[(2,3),(3,1),(3,2)])

-------------------------------- Resolución
--retorna en una tupla las listas menores a un elemento dado y las lista mayores a ese elemento

dividir :: Ord a=>a -> [a] -> ([a],[a])
dividir num li= (filter (<=num) li, filter (>num) li)
