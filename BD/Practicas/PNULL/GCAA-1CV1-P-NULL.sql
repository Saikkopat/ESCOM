
-- PRACTICA NULL, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.

-- Para las siguientes consultas se agregan elementos externos como:
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (22, 'Jacinda ', 'Ardern ', 'Nueva Zelanda', 'Wellington ', '2023-06-14 21:04', '1980-07-26 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (23, 'Dan ', 'Schulman ', 'Estados Unidos ', 'New Jersey ', '2023-06-14 21:04', '1958-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (24, 'John ', 'Nkengasong ', 'Cameroon ', 'Yaoundé ', '2023-06-14 21:04', '1960-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (25, 'Jessica ', 'Tan ', 'Singapur ', ' ', '2023-06-14 21:04', '1972-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (26,'Justin ','Welby ','Reino Unido ','London ','2023-06-14 21:05','1956-01-06 ');
INSERT INTO cliente (idcliente, nombre, primerapellido,direccion_pais,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (27,'Stacey ','Abrams ','Estados Unidos ','Georgia ','2023-06-14 21:05','1973-12-09 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (28,'Reshorna ','Fitzpatrick ','Estados Unidos ','Illinois ','2023-06-14 21:05','1970-01-01 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (29,'Adar ','Poonawalla ','India ','Calcuta ','2023-06-14 21:05','1981-01-14 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (30,'Dolly ','Parton ','Estados Unidos ','Tennessee ','2023-06-14 21:05','1946-01-19 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (31,'Mike ','Sommers ','Estados Unidos ','Washington D.C. ','2023-06-14 21:06','1970-01-01 ');

-- Muestra a los clientes que todavía no tienen asignado crédito. 
SELECT (idcliente, nombre, credito) from cliente WHERE (credito IS NULL);

walmart_2=> SELECT (idcliente, nombre, credito) from cliente WHERE (credito IS NULL);
        row        
-------------------
 (22,"Jacinda ",)
 (23,"Dan ",)
 (24,"John ",)
 (25,"Jessica ",)
 (26,"Justin ",)
 (27,"Stacey ",)
 (28,"Reshorna ",)
 (29,"Adar ",)
 (30,"Dolly ",)
 (31,"Mike ",)
(10 rows)


-- Muestra a los clientes que no tienen apellido materno.
SELECT (idcliente, nombre, primerapellido, segundoapellido) from cliente WHERE (segundoapellido IS NULL);

walmart_2=> SELECT (idcliente, nombre, primerapellido, segundoapellido) from cliente WHERE (segundoapellido IS NULL);
               row                
----------------------------------
 (22,"Jacinda ","Ardern ",)
 (23,"Dan ","Schulman ",)
 (24,"John ","Nkengasong ",)
 (25,"Jessica ","Tan ",)
 (26,"Justin ","Welby ",)
 (27,"Stacey ","Abrams ",)
 (28,"Reshorna ","Fitzpatrick ",)
 (29,"Adar ","Poonawalla ",)
 (30,"Dolly ","Parton ",)
 (31,"Mike ","Sommers ",)
(10 rows)

-- Muestra solo a los clientes que si tienen asignado un RFC.
SELECT (idcliente, nombre, rfc) from cliente WHERE (rfc IS NOT NULL);

walmart_2=> SELECT (idcliente, nombre, rfc) from cliente WHERE (rfc IS NOT NULL);
                row                
-----------------------------------
 (1,Juan,0101010101)
 (2,Andres,0202020202)
 (3,Alexander,0303030303)
 (4,Juan,5050505050)
 (5,Emanuel,1010101010)
 (15,"Arnoldo Emanuel",4545456666)
 (16,"Juan Andres",3131314565)
 (17,Guadalupe,2121215454)
 (9,Elio,0909090909)
 (12,Daniel,2828282929)
 (13,Guadalupe,4848484848)
 (14,Hermenegildo,6262626262)
 (6,"Eduardo Antonio",0606060606)
 (7,Eduardo,0707070707)
 (8,Andres,0808080808)
 (10,Maria,1515151516)
 (11,Filomeno,2121212121)
 (18,Abril,777774848)
 (19,Abril,2727274848)
 (20,Rosa,5454546666)
 (21,Federico,2126181313)
(21 rows)


-- Muestra solo a los clientes que si tienen correo electrónico registrado. 
SELECT (idcliente, nombre, correo) from cliente WHERE (correo IS NOT NULL);

walmart_2=> SELECT (idcliente, nombre, correo) from cliente WHERE (correo IS NOT NULL);
                 row                  
--------------------------------------
 (1,Juan,jpl@mail.com)
 (2,Andres,agj@mail.com)
 (3,Alexander,apa@mail.com)
 (4,Juan,jhl@mail.com)
 (5,Emanuel,erg@mail.com)
 (15,"Arnoldo Emanuel",aeer@mail.com)
 (16,"Juan Andres",jaag@mail.com)
 (17,Guadalupe,gan@mail.com)
 (9,Elio,eppj@mail.com)
 (12,Daniel,dvh@mail.com)
 (13,Guadalupe,gag@mail.com)
 (14,Hermenegildo,hpa@mail.com)
 (6,"Eduardo Antonio",eahj@mail.com)
 (7,Eduardo,eanj@mail.com)
 (8,Andres,agr@mail.com)
 (10,Maria,mcv@mail.com)
 (11,Filomeno,fgm@mail.com)
 (18,Abril,agf@mail.com)
 (19,Abril,apr@mail.com)
 (20,Rosa,rmr@mail.com)
 (21,Federico,fbb@mail.com)
(21 rows)


-- Muestra solo a los productos que si tienen precio sugerido de venta
-- Se agregan los siguientes registros
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciominimo,preciocompra) VALUES (29, 3, 'Teclado', 10, 17000, 11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciominimo,preciocompra) VALUES (30, 3, 'RAM', 10, 17000, 11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciominimo,preciocompra) VALUES (31, 3, 'Disco Duro', 10, 17000, 11500);


SELECT (idproducto, nombre, preciocompra, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa IS NULL);

walmart_2=> SELECT (idproducto, nombre, preciocompra, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa IS NULL);
              row              
-------------------------------
 (29,Teclado,11500.0000,)
 (30,RAM,11500.0000,)
 (31,"Disco Duro",11500.0000,)
(3 rows)

-- De modo que
SELECT (idproducto, nombre, preciocompra, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa IS NOT NULL);

walmart_2=> SELECT (idproducto, nombre, preciocompra, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa IS NOT NULL);
                         row                          
------------------------------------------------------
 (9,Refrigerador,6000.0000,9000.0000)
 (10,Congelador,7000.0000,10000.0000)
 (11,Horno,8000.0000,11000.0000)
 (12,Microondas,9000.0000,12000.0000)
 (13,Tostadora,10000.0000,13000.0000)
 (14,Lavavajillas,11000.0000,14000.0000)
 (15,Lavadora,12000.0000,15000.0000)
 (16,Secadora,13000.0000,16000.0000)
 (17,Cafetera,14000.0000,17000.0000)
 (18,Aspiradora,15000.0000,18000.0000)
 (19,Licuadora,16000.0000,19000.0000)
 (20,"Procesador de alimentos",17000.0000,20000.0000)
 (21,"Olla instantánea",18000.0000,21000.0000)
 (22,Arrocera,19000.0000,22000.0000)
 (23,"Olla de cocción lenta",20000.0000,23000.0000)
 (24,"Batidora de pie",21000.0000,24000.0000)
 (25,Exprimidor,22000.0000,25000.0000)
 (26,Gofrera,23000.0000,26000.0000)
 (27,"Máquina de pan",24000.0000,27000.0000)
 (28,"Máquina de helados",25000.0000,28000.0000)
 (2,DVd,900.0000,1500.0000)
 (3,Celular,1200.0000,2000.0000)
 (4,Pantalla,10000.0000,15000.0000)
 (5,BlueRay,5000.0000,5500.0000)
 (7,Compu,11500.0000,19000.0000)
 (8,Monitor,11500.0000,19000.0000)
 (1,Televisor,3000.0000,5000.0000)
(27 rows)


-- Muestra a los clientes que no tienen delegación especificada   
SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) from cliente WHERE (direccion_delegacion IS NULL);

walmart_2=> SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) from cliente WHERE (direccion_delegacion IS NULL);
               row                
----------------------------------
 (22,"Jacinda ","Wellington ",)
 (23,"Dan ","New Jersey ",)
 (24,"John ","Yaoundé ",)
 (25,"Jessica "," ",)
 (26,"Justin ","London ",)
 (27,"Stacey ","Georgia ",)
 (28,"Reshorna ","Illinois ",)
 (29,"Adar ","Calcuta ",)
 (30,"Dolly ","Tennessee ",)
 (31,"Mike ","Washington D.C. ",)
(10 rows)
