
-- PRACTICA SELECT, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Envié también el script de las consultas.

-- Los clientes con el nombre de Eduardo. 

SELECT (idcliente, nombre) from cliente WHERE (nombre LIKE '%Eduardo%');

walmart_2=> SELECT (idcliente, nombre) from cliente WHERE (nombre LIKE '%Eduardo%');
          row          
-----------------------
 (6,"Eduardo Antonio")
 (7,Eduardo)
(2 rows)


-- Los clientes que no se llamen Eduardo. 

SELECT (idcliente, nombre) from cliente WHERE (nombre NOT LIKE '%Eduardo%');

walmart_2=> SELECT (idcliente, nombre) from cliente WHERE (nombre NOT LIKE '%Eduardo%');
          row           
------------------------
 (1,Juan)
 (2,Andres)
 (3,Alexander)
 (4,Juan)
 (5,Emanuel)
 (9,Elio)
 (12,Daniel)
 (13,Guadalupe)
 (14,Hermenegildo)
 (8,Andres)
 (10,Maria)
 (11,Filomeno)
 (15,"Arnoldo Emanuel")
 (16,"Juan Andres")
 (17,Guadalupe)
 (18,Abril)
 (19,Abril)
 (20,Rosa)
(18 rows)


-- Se modifican los siguientes clientes:

(15,"Arnoldo Emanuel",20000.0000,10000.0000,10000.0000)
(16,"Juan Andres",21000.0000,10500.0000,10500.0000)
(17,Guadalupe,22000.0000,11000.0000,11000.0000)
(12,Daniel,16000.0000,8000.0000,8000.0000)
(13,Guadalupe,18000.0000,9000.0000,9000.0000)
(14,Hermenegildo,19000.0000,9500.0000,9500.0000)

UPDATE cliente SET credito=3000, deuda=1000, credito_disponible=2000 WHERE (idcliente=15);
UPDATE cliente SET credito=4000, deuda=1500, credito_disponible=2500 WHERE (idcliente=16);
UPDATE cliente SET credito=2500, deuda=500, credito_disponible=2000 WHERE (idcliente=17);
UPDATE cliente SET credito=4500, deuda=2000, credito_disponible=2500 WHERE (idcliente=12);
UPDATE cliente SET credito=3500, deuda=1500, credito_disponible=2000 WHERE (idcliente=13);
UPDATE cliente SET credito=4000, deuda=1000, credito_disponible=3000 WHERE (idcliente=14);



-- Los clientes con un credito mayor a 5000. 
SELECT (idcliente, nombre, credito) from cliente WHERE (credito > 5000);

walmart_2=> SELECT (idcliente, nombre, credito) from cliente WHERE (credito > 5000);
               row                
----------------------------------
 (2,Andres,6000.0000)
 (3,Alexander,7000.0000)
 (4,Juan,8000.0000)
 (5,Emanuel,9000.0000)
 (9,Elio,13000.0000)
 (6,"Eduardo Antonio",10000.0000)
 (7,Eduardo,11000.0000)
 (8,Andres,12000.0000)
 (10,Maria,14000.0000)
 (11,Filomeno,15000.0000)
 (18,Abril,23000.0000)
 (19,Abril,24000.0000)
 (20,Rosa,25000.0000)
(13 rows)


-- Los clientes con un credito menor a 5000. 
SELECT (idcliente, nombre, credito) from cliente WHERE (credito < 5000);

walmart_2=> SELECT (idcliente, nombre, credito) from cliente WHERE (credito < 5000);
               row                
----------------------------------
 (15,"Arnoldo Emanuel",3000.0000)
 (16,"Juan Andres",4000.0000)
 (17,Guadalupe,2500.0000)
 (12,Daniel,4500.0000)
 (13,Guadalupe,3500.0000)
 (14,Hermenegildo,4000.0000)
(6 rows)


-- Los clientes de la Delegacion Iztacalco 
SELECT (idcliente, nombre, direccion_delegacion) from cliente WHERE (direccion_delegacion = 'Iztacalco');

walmart_2=> SELECT (idcliente, nombre, direccion_delegacion) from cliente WHERE (direccion_delegacion = 'Iztacalco');
               row               
---------------------------------
 (5,Emanuel,Iztacalco)
 (6,"Eduardo Antonio",Iztacalco)
 (7,Eduardo,Iztacalco)
 (10,Maria,Iztacalco)
(4 rows)


-- Los productos con un precio sugerido de mas de 5000. 
SELECT (idproducto, nombre, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa > 5000);

walmart_2=> SELECT (idproducto, nombre, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa > 5000);
                    row                    
-------------------------------------------
 (9,Refrigerador,9000.0000)
 (10,Congelador,10000.0000)
 (11,Horno,11000.0000)
 (12,Microondas,12000.0000)
 (13,Tostadora,13000.0000)
 (14,Lavavajillas,14000.0000)
 (15,Lavadora,15000.0000)
 (16,Secadora,16000.0000)
 (17,Cafetera,17000.0000)
 (18,Aspiradora,18000.0000)
 (19,Licuadora,19000.0000)
 (20,"Procesador de alimentos",20000.0000)
 (21,"Olla instantánea",21000.0000)
 (22,Arrocera,22000.0000)
 (23,"Olla de cocción lenta",23000.0000)
 (24,"Batidora de pie",24000.0000)
 (25,Exprimidor,25000.0000)
 (26,Gofrera,26000.0000)
 (27,"Máquina de pan",27000.0000)
 (28,"Máquina de helados",28000.0000)
 (4,Pantalla,15000.0000)
 (5,BlueRay,5500.0000)
 (7,Compu,19000.0000)
 (8,Monitor,19000.0000)
(24 rows)


-- Los productos de los que nos queden menos de 5. 
SELECT (idproducto, nombre, existencia) FROM producto WHERE (existencia < 5);

walmart_2=> SELECT (idproducto, nombre, existencia) FROM producto WHERE (existencia < 5);
        row         
--------------------
 (3,Celular,3.0000)
(1 row)

-- Los clientes cuyo pago mensual a 6 meses sea mayor a 1000.
-- Suponiendo deuda / 6, tenemos:

SELECT (idcliente, nombre, deuda, ROUND(deuda/6,2)) from cliente WHERE (deuda/6 > 1000);

walmart_2=> SELECT (idcliente, nombre, deuda, ROUND(deuda/6,2)) from cliente WHERE (deuda/6 > 1000);
               row               
---------------------------------
 (9,Elio,6500.0000,1083.33)
 (10,Maria,7000.0000,1166.67)
 (11,Filomeno,7500.0000,1250.00)
 (18,Abril,11500.0000,1916.67)
 (19,Abril,12000.0000,2000.00)
 (20,Rosa,12500.0000,2083.33)
(6 rows)

-- Nota: se utilizo ROUND() para evitar que imprimiera
                      row                      
-----------------------------------------------
(9,Elio,6500.0000,1083.3333333333333333)
(10,Maria,7000.0000,1166.6666666666666667)


-- Los clientes cuyo crédito disponible (Crédito- Deuda), sea menor o igual a 3000. 
-- Como se ingresó credito_disponible como resta de deuda a credito, se tiene:
SELECT (idcliente, nombre, credito, deuda, credito_disponible) FROM cliente WHERE (credito_disponible <= 3000);

walmart_2=> SELECT (idcliente, nombre, credito, deuda, credito_disponible) FROM cliente WHERE (credito_disponible <= 3000);
                         row                          
------------------------------------------------------
 (1,Juan,5000.0000,2500.0000,2500.0000)
 (2,Andres,6000.0000,3000.0000,3000.0000)
 (15,"Arnoldo Emanuel",3000.0000,1000.0000,2000.0000)
 (16,"Juan Andres",4000.0000,1500.0000,2500.0000)
 (17,Guadalupe,2500.0000,500.0000,2000.0000)
 (12,Daniel,4500.0000,2000.0000,2500.0000)
 (13,Guadalupe,3500.0000,1500.0000,2000.0000)
 (14,Hermenegildo,4000.0000,1000.0000,3000.0000)
(8 rows)

-- O bien
SELECT (idcliente, nombre, credito, deuda, credito - deuda) FROM cliente WHERE (credito - deuda <= 3000);

walmart_2=> SELECT (idcliente, nombre, credito, deuda, credito - deuda) FROM cliente WHERE (credito - deuda <= 3000);
                         row                          
------------------------------------------------------
 (1,Juan,5000.0000,2500.0000,2500.0000)
 (2,Andres,6000.0000,3000.0000,3000.0000)
 (15,"Arnoldo Emanuel",3000.0000,1000.0000,2000.0000)
 (16,"Juan Andres",4000.0000,1500.0000,2500.0000)
 (17,Guadalupe,2500.0000,500.0000,2000.0000)
 (12,Daniel,4500.0000,2000.0000,2500.0000)
 (13,Guadalupe,3500.0000,1500.0000,2000.0000)
 (14,Hermenegildo,4000.0000,1000.0000,3000.0000)
(8 rows)


-- Los clientes a los que su deuda incrementada en 20% sea mayor a 20000.  

--Como el cliente con la deuda mas grande es:
SELECT (idcliente, nombre, deuda) FROM cliente ORDER BY deuda DESC LIMIT 1;

walmart_2=> SELECT (idcliente, nombre, deuda) FROM cliente ORDER BY deuda DESC LIMIT 1;
         row          
----------------------
 (20,Rosa,12500.0000)
(1 row)

-- Agregamos a 
INSERT INTO cliente VALUES (21, 'Federico','Buenrostro','Buenabarra','2126181313','666665551','fbb@mail.com','Mexico','CDMX','Coyoacan','Xoco','Pueblo viejo','5','3','484845', 40000, 20000, 20000, NOW(),'1970-05-31');

walmart_2=> INSERT INTO cliente VALUES (21, 'Federico','Buenrostro','Buenabarra','2126181313','666665551','fbb@mail.com','Mexico','CDMX','Coyoacan','Xoco','Pueblo viejo','5','3','484845', 40000, 20000, 20000, NOW(),'1970-05-31');
INSERT 0 1

-- De modo que
SELECT (idcliente, nombre, deuda, ROUND(deuda + deuda*.2,2)) FROM cliente WHERE (deuda + deuda*.2 > 20000);

walmart_2=> SELECT (idcliente, nombre, deuda, ROUND(deuda + deuda*.2,2)) FROM cliente WHERE (deuda + deuda*.2 > 20000);
                row                
-----------------------------------
 (21,Federico,20000.0000,24000.00)
(1 row)