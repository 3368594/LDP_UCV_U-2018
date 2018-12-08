------------------------ Enunciado del Problema
--Escriba una función elimDobles, que dada una lista finita, devuelva una nueva lista, 
--con solamente una ocurrencia de cada elemento de la lista original.

-------------------------------- Explicación

--dada una lista de elemento elimina todas las apariciones de ese elemento en el resto de la lista 

------------------------------ Llamadas de Ejemplo 

--E:elimDoble [1,2,3,3,5,6,1,7] S:[1,2,3,5,6,7]
--E:elimDoble [[3,6],[2,5],[3,6],[3,6],[2,4],[5,5]] S:[[3,6],[2,5],[2,4], [5,5]]

-------------------------------- Resolución
--toma un elemento y comprueba si ese elemento aparece en el resto de la lista de ser asi elimina el resto de las apariciones del mismo
-- y vuelve a repetir el proceso hasta retornar una lista sin repeticiones

elimDoble :: Eq a=>[a]->[a]
elimDoble []= []
elimDoble (x:xs)= if(elem x xs) then x:elimDoble (elimina x xs) else x:elimDoble xs

elimina :: Eq b =>b-> [b]->[b]
elimina _ []= []
elimina num (x:xs) = if(num==x) then elimina num xs else x:elimina num xs
