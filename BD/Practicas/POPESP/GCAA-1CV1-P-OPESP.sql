
-- PRACTICA OPERADORES ESPECIALES, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.

-- Credito entre 5000 y 10000 
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


-- Los de la delegacion Iztacalco, Coyoacan o Benito Juarez 
SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%') OR (direccion_delegacion LIKE '%Coyoacan%') OR (direccion_delegacion LIKE '%Benito Juarez%');

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%') OR (direccion_delegacion LIKE '%Coyoacan%') OR (direccion_delegacion LIKE '%Benito Juarez%');
               row               
---------------------------------
 (5,Emanuel,Iztacalco)
 (6,"Eduardo Antonio",Iztacalco)
 (7,Eduardo,Iztacalco)
 (10,Maria,Iztacalco)
 (20,Rosa,Coyoacan)
 (21,Federico,Coyoacan)
(6 rows)

-- Los que su deuda este entre 10000 y 15000 y su pago mensual a 12 meses este entre 500 y 1000 
--Suponiendo pago mensual = deuda / 12:
SELECT (idcliente, nombre, deuda, ROUND(deuda/12, 2)) FROM cliente WHERE (deuda BETWEEN 10000 AND 15000) AND (deuda/12 BETWEEN 500 AND 1000);

walmart_2=> SELECT (idcliente, nombre, deuda, ROUND(deuda/12, 2)) FROM cliente WHERE (deuda BETWEEN 10000 AND 15000) AND (deuda/12 BETWEEN 500 AND 1000);
              row              
-------------------------------
 (18,Abril,11500.0000,958.33)
 (19,Abril,12000.0000,1000.00)
(2 rows)


-- Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y que su deuda este entre 10000 y 15000
SELECT (idcliente, nombre, direccion_delegacion, deuda) FROM cliente WHERE (direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan')) AND (deuda BETWEEN 10000 AND 15000);

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion, deuda) FROM cliente WHERE (direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan')) AND (deuda BETWEEN 10000 AND 15000);
              row              
-------------------------------
 (20,Rosa,Coyoacan,12500.0000)
(1 row)


-- Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y su apellido paterno sea Blanco.
-- Se agregan los siguientes registros:
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, direccion_delegacion, fecha_Alta) VALUES (37,'Eduardo','Blanco','Mexico','CDMX','Coyoacan', NOW());
INSERT INTO cliente (idcliente, nombre, primerapellido, segundoapellido, direccion_pais, direccion_estado, direccion_delegacion, fecha_Alta) VALUES (38,'Miguel','Blanco','Blanco','Mexico','CDMX','Benito Juarez', NOW());

-- De modo que 
SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan')) AND (primerapellido LIKE '%Blanco%');

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion) FROM cliente WHERE (direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan')) AND (primerapellido LIKE '%Blanco%');
             row             
-----------------------------
 (37,Eduardo,Coyoacan)
 (38,Miguel,"Benito Juarez")
(2 rows)

-- Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y cualquiera de sus apellidos sea Blanco, Perez o Garcia 
SELECT (idcliente, nombre, primerapellido, segundoapellido, direccion_delegacion) FROM cliente WHERE direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan') AND (primerapellido IN ('Blanco','Perez','Garcia') OR segundoapellido IN ('Blanco','Perez','Garcia'));

walmart_2=> SELECT (idcliente, nombre, primerapellido, segundoapellido, direccion_delegacion) FROM cliente WHERE direccion_delegacion IN ('Iztacalco','Benito Juarez','Coyoacan') AND (primerapellido IN ('Blanco','Perez','Garcia') OR segundoapellido IN ('Blanco','Perez','Garcia'));
                    row                    
-------------------------------------------
 (37,Eduardo,Blanco,,Coyoacan)
 (38,Miguel,Blanco,Blanco,"Benito Juarez")
(2 rows)
