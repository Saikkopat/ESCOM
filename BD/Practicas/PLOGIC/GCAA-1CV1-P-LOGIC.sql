
-- PRACTICA OPERADORES LOGICOS, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.


--Los que NO se llaman Edgar o Juan 
SELECT (idcliente, nombre) FROM cliente WHERE (nombre NOT LIKE '%Edgar%') AND (nombre NOT LIKE '%Juan%');

walmart_2=> SELECT (idcliente, nombre) FROM cliente WHERE (nombre NOT LIKE '%Edgar%') AND (nombre NOT LIKE '%Juan%');
          row           
------------------------
 (2,Andres)
 (3,Alexander)
 (5,Emanuel)
 (15,"Arnoldo Emanuel")
 (17,Guadalupe)
 (9,Elio)
 (12,Daniel)
 (13,Guadalupe)
 (14,Hermenegildo)
 (6,"Eduardo Antonio")
 (7,Eduardo)
 (8,Andres)
 (10,Maria)
 (11,Filomeno)
 (18,Abril)
 (19,Abril)
 (20,Rosa)
 (21,Federico)
 (22,"Jacinda ")
 (23,"Dan ")
 (24,"John ")
 (25,"Jessica ")
 (26,"Justin ")
 (27,"Stacey ")
 (28,"Reshorna ")
 (29,"Adar ")
 (30,"Dolly ")
 (31,"Mike ")
(28 rows)

--Los que tienen un credito entre 5000 y 10000 
SELECT (idcliente, nombre, credito) FROM cliente WHERE (credito BETWEEN 5000 AND 10000);

walmart_2=> SELECT (idcliente, nombre, credito) FROM cliente WHERE (credito BETWEEN 5000 AND 10000);
               row                
----------------------------------
 (1,Juan,5000.0000)
 (2,Andres,6000.0000)
 (3,Alexander,7000.0000)
 (4,Juan,8000.0000)
 (5,Emanuel,9000.0000)
 (6,"Eduardo Antonio",10000.0000)
(6 rows)


--Los que se llamen Eduardo y su apellido paterno es Martínez.
-- Se agrega a 
INSERT INTO cliente (idcliente, nombre,primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (32,'Eduardo','Martinez','Estados Unidos','Alabama', NOW(),'1971-02-14');


-- De modo que
SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Eduardo%') AND (primerapellido LIKE '%Martinez%');

walmart_2=> SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Eduardo%') AND (primerapellido LIKE '%Martinez%');
          row          
-----------------------
 (32,Eduardo,Martinez)
(1 row)

--Los que su apellido paterno es Alvarado y NO se llaman Juan. 
SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (primerapellido LIKE '%Alvarado%') AND (nombre NOT LIKE '%Juan%');

walmart_2=> SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (primerapellido LIKE '%Alvarado%') AND (nombre NOT LIKE '%Juan%');
           row           
-------------------------
 (17,Guadalupe,Alvarado)
(1 row)


--Los que se llaman Blanca o su apellido paterno es Rodríguez. 
-- Se agregan los registros
INSERT INTO cliente (idcliente, nombre,primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (33,'Blanca','Silvia','Rusia','Crimea', NOW(),'1984-05-11');
INSERT INTO cliente (idcliente, nombre,primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (34,'Ismael','Rodriguez','Rusia','Moscu', NOW(),'1998-07-21');

-- De modo que
SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Blanca%') OR (primerapellido LIKE '%Rodriguez%');

walmart_2=> SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Blanca%') OR (primerapellido LIKE '%Rodriguez%');
          row          
-----------------------
 (33,Blanca,Silvia)
 (34,Ismael,Rodriguez)
(2 rows)

--Los que cualquiera de sus apellidos es Paz.
-- Se agregan los registros
INSERT INTO cliente (idcliente, nombre,primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (35,'Xi','Paz','China','Pekin', NOW(),'1966-12-13');
INSERT INTO cliente (idcliente, nombre, segundoapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (36,'Zhang','Paz','China','Taiwan', NOW(),'1999-10-31');

-- De modo que:
SELECT (idcliente, nombre, primerapellido, segundoapellido) FROM cliente WHERE (primerapellido LIKE '%Paz%') OR (segundoapellido LIKE '%Paz%');

walmart_2=> SELECT (idcliente, nombre, primerapellido, segundoapellido) FROM cliente WHERE (primerapellido LIKE '%Paz%') OR (segundoapellido LIKE '%Paz%');
       row       
-----------------
 (35,Xi,Paz,)
 (36,Zhang,,Paz)
(2 rows)


--Los que su apellido paterno es Ambriz, Pérez o García. 
SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (primerapellido LIKE '%Ambriz%') OR (primerapellido LIKE '%Perez%') OR (primerapellido LIKE '%Garcia%');

walmart_2=> SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (primerapellido LIKE '%Ambriz%') OR (primerapellido LIKE '%Perez%') OR (primerapellido LIKE '%Garcia%');
           row           
-------------------------
 (1,Juan,Perez)
 (13,Guadalupe,Ambriz)
 (14,Hermenegildo,Perez)
 (8,Andres,Garcia)
 (19,Abril,Perez)
(5 rows)


--Los que se llaman Abril y su apellido paterno es Govea o Pérez. 
SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Abril%') AND (primerapellido LIKE '%Govea%' OR primerapellido LIKE '%Perez%');

walmart_2=> SELECT (idcliente, nombre, primerapellido) FROM cliente WHERE (nombre LIKE '%Abril%') AND (primerapellido LIKE '%Govea%' OR primerapellido LIKE '%Perez%');
       row        
------------------
 (18,Abril,Govea)
 (19,Abril,Perez)
(2 rows)


--Los de la delegación Iztacalco, GAM y Benito Juarez. 
SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%') OR (direccion_delegacion LIKE '%GAM%') OR (direccion_delegacion LIKE '%Benito Juarez%');

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%') OR (direccion_delegacion LIKE '%GAM%') OR (direccion_delegacion LIKE '%Benito Juarez%');
               row               
---------------------------------
 (5,Emanuel,Iztacalco)
 (6,"Eduardo Antonio",Iztacalco)
 (7,Eduardo,Iztacalco)
 (10,Maria,Iztacalco)
 (18,Abril,GAM)
(5 rows)


--Los que viven en Iztacalco o Coyoacan y su deuda está en 10000 y 20000 
SELECT (idcliente, nombre, direccion_delegacion, deuda) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%' OR direccion_delegacion LIKE '%Coyoacan%') AND (deuda BETWEEN 10000 AND 20000);

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion, deuda) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%' OR direccion_delegacion LIKE '%Coyoacan%') AND (deuda BETWEEN 10000 AND 20000);
                row                
-----------------------------------
 (20,Rosa,Coyoacan,12500.0000)
 (21,Federico,Coyoacan,20000.0000)
(2 rows)
