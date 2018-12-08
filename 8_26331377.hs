------------------------ Enunciado del Problema
--Escriba una función posicionesque devuelva una lista de índices de las posiciones de un elemento determinado en 
--una lista de elementos. Por ejemplo:

-------------------------------- Explicación

--toma un dato y comprueba si ese elemento esta en la lista y retornando el indice de su posicion en la lista 

------------------------------ Llamadas de Ejemplo 

--E:posiciones 4 [1,4,3,7,4,2] S:[2,5]
--E:posiciones [3,5] [[3,6],[2,5]] S:[]

-------------------------------- Resolución
--Toma un digito y busca la posicion de ese digito en la lista almacenandolo en otra lista y luego mostrandola

posiciones :: Eq a=> a->[a]->[Int]
posiciones num li = resuelve 1 num li

resuelve :: Eq a => Int->a->[a]->[Int]
resuelve _ _ []= []
resuelve cont num (x:xs)= if(num==x) then cont: resuelve (cont+1) (num) (xs) else resuelve (cont+1) (num) (xs)
