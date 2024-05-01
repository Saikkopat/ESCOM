
-- PRACTICA OPERADORES ESPECIALES, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.

-- Muestra solo a los clientes que su nombre tiene más de 5 letras. 
SELECT (idcliente, nombre, LENGTH(nombre)) FROM cliente WHERE LENGTH(nombre) > 5;

walmart_2=> SELECT (idcliente, nombre, LENGTH(nombre)) FROM cliente WHERE LENGTH(nombre) > 5;
            row            
---------------------------
 (2,Andres,6)
 (3,Alexander,9)
 (5,Emanuel,7)
 (15,"Arnoldo Emanuel",15)
 (16,"Juan Andres",11)
 (17,Guadalupe,9)
 (12,Daniel,6)
 (13,Guadalupe,9)
 (14,Hermenegildo,12)
 (6,"Eduardo Antonio",15)
 (7,Eduardo,7)
 (8,Andres,6)
 (11,Filomeno,8)
 (21,Federico,8)
 (22,"Jacinda ",8)
 (25,"Jessica ",8)
 (26,"Justin ",7)
 (27,"Stacey ",7)
 (28,"Reshorna ",9)
 (30,"Dolly ",6)
 (32,Eduardo,7)
 (33,Blanca,6)
 (34,Ismael,6)
 (37,Eduardo,7)
 (38,Miguel,6)
(25 rows)


-- Muestra a los clientes que su nombre tiene entre 5 y 7 caracteres.
SELECT (idcliente, nombre, LENGTH(nombre)) FROM cliente WHERE LENGTH(nombre) BETWEEN 5 AND 7;

walmart_2=> SELECT (idcliente, nombre, LENGTH(nombre)) FROM cliente WHERE LENGTH(nombre) BETWEEN 5 AND 7;
       row        
------------------
 (2,Andres,6)
 (5,Emanuel,7)
 (12,Daniel,6)
 (7,Eduardo,7)
 (8,Andres,6)
 (10,Maria,5)
 (18,Abril,5)
 (19,Abril,5)
 (24,"John ",5)
 (26,"Justin ",7)
 (27,"Stacey ",7)
 (29,"Adar ",5)
 (30,"Dolly ",6)
 (31,"Mike ",5)
 (32,Eduardo,7)
 (33,Blanca,6)
 (34,Ismael,6)
 (36,Zhang,5)
 (37,Eduardo,7)
 (38,Miguel,6)
(20 rows)
