
-- PRACTICA DML, González Cárdenas Ángel Aquilez, 1CV1


-- Se exportó la base de datos 'walmart' mediante el comando:
pg_dump -U dbusername dbname > dbexport.pgsql

-- de modo que se generó el archivo walmartexport.pgsql, y se importó mediante el comando:

psql -U username dbname < dbexport.pgsql

-- resultando en la creación de la base de datos 'walmart_2'.


-- Se anexa la BD como walmart_2.pgsql como evidencia.

-- INSTRUCCIONES:

-- Para iniciar con esta practica es necesario tener 20 registros en cada una de las 5 tablas. Recuerde que puede haber registros nulos pero en los campos que no pueden haber son los siguientes: Nombre, Primer_Apellido, Segundo_Apellido, Telefono, Correo_electronico, País, Direccion_Estado, Direccion_Delegacion, crédito, deuda, fecha_Alta y fecha_Nacimiento. 


-- Se tienen los siguientes registros para las tablas:


-- --- TABLA CLIENTES

INSERT INTO cliente  VALUES (1, 'Juan','Perez','Lopez','0101010101','2121212121','jpl@mail.com','Mexico','CDMX','Gustavo A. Madero','Lindavista','Norte 184','55','21','515151');
INSERT INTO cliente VALUES (2, 'Andres','Galicia','Juarez','0202020202','5151515151','agj@mail.com','Mexico','Mexico','Tlalnepantla','Tizayuca','Rio 152','21','75', '616161');
INSERT INTO cliente VALUES (3, 'Alexander','Perdomo','Andrade','0303030303','6161616161','apa@mail.com','Mexico','Mexico','Nezahualcoyotl','Agua azul','Vicente Villada','75','31','700707');
INSERT INTO cliente VALUES (5, 'Emanuel','Reyes','Galaviz','1010101010','4545454545','erg@mail.com','Mexico','CDMX','Iztacalco','Peñon de los baños','Oriente 150','45','1','55664');
INSERT INTO cliente VALUES (4, 'Juan','Hernandez','Lopez','5050505050','8585858585','jhl@mail.com','Mexico','Nezahualcoyolt','El Sol','Lomas verdes','25','3','56334');
INSERT INTO cliente VALUES (6, 'Eduardo Antonio','Hernandez','Juarez','0606060606','9191919191','eahj@mail.com','Mexico','Ciudad de Mexico','Iztacalco','Federal','Comisión Nacional Agraria','48','5','71500');
INSERT INTO cliente VALUES (7, 'Eduardo','Acosta','Nuñez','0707070707','1212121212','eanj@mail.com','Mexico','Ciudad de Mexico','Iztacalco','Moctezuma','Ignacio Zaragoza','585','3','71500');
INSERT INTO cliente VALUES (8, 'Andres','Garcia','Rodriguez','0808080808','1313131313','agr@mail.com','Mexico','Ciudad de Mexico','Iztapalapa','Cerro de la estrella','Miguel Angel Andor','315','16','82100');
INSERT INTO cliente VALUES (9, 'Elio','Pez','Prado','0909090909','9999999999','eppj@mail.com','Mexico','Mexico','Nezahualcoyotl','Estado de Mexico','Cuauhtemoc','2','10','57500');
INSERT INTO cliente VALUES (10, 'Maria','Cardona','Velez','1515151516','21212127274','mcv@mail.com','Mexico','Ciudad de Mexico','Iztacalco','Federal','Hacienda y credito','28','29','50700');
INSERT INTO cliente VALUES (11, 'Filomeno','Guevara','Monroy','2121212121','7878787878','fgm@mail.com','Mexico','Ciudad de Mexico','Milpa Alta','Rancho 1','Camino 2','1','1','66800');
INSERT INTO cliente VALUES (12, 'Daniel','Valencia','Herrera','2828282929','6855050789','dvh@mail.com','Mexico','Mexico','Tlalneplantla','Viveros','Viveros','2','10','58339');
INSERT INTO cliente VALUES (13, 'Guadalupe','Ambriz','Garcia','4848484848','2525252525','gag@mail.com','Mexico','Morelos','Emiliano Zapata','Azucar','Prolongacion 1','75','25','48948');
INSERT INTO cliente VALUES (14, 'Hermenegildo','Perez','Asuncion','6262626262','3131313131','hpa@mail.com','Mexico','Puebla','Izucar de Matamoros','Terron de azucar','Avenida 75','48','3','77745');
INSERT INTO cliente VALUES (15, 'Arnoldo Emanuel','Echegaray','Robles','4545456666','7777788888','aeer@mail.com','Mexico','Ciudad de Mexico','Cuauhtemoc','Centro','16 de Septiembre','35','2','74833');
INSERT INTO cliente VALUES (16, 'Juan Andres','Alvarado','Garcia','3131314565','55214848484','jaag@mail.com','Mexico','Ciudad de Mexico','Milpa Alta','Pueblo nuevo','Milpa','21','4','83354');
INSERT INTO cliente VALUES (17, 'Guadalupe','Alvarado','Nisman','2121215454','5656565555','gan@mail.com','Mexico','Ciudad de Mexico','Magdalena Contreras','Equinocio','Saturno','45','2','99966');
INSERT INTO cliente VALUES (18, 'Abril','Govea','Fernandez','777774848','2121213333','agf@mail.com','Mexico','Ciudad de Mexico','GAM','La escalera','Saturno','33','1','74747');
INSERT INTO cliente VALUES (19, 'Abril','Perez','Ramirez','2727274848','2121212626','apr@mail.com','Mexico','Ciudad de Mexico','Gustavo A Madero','La escalera','Neptuno','48','1','68685');
INSERT INTO cliente VALUES (20, 'Rosa','Mercacho','Rosales','5454546666','7778889999','rmr@mail.com','Mexico','Ciudad de Mexico','Coyoacan','Xico','Pueblo nuevo','15','33','484845');



-- TABLA PROVEEDOR



INSERT INTO proveedor VALUES (7, 'Miele', '7272727272', 'mieleprov@gmail.com', '6161616161');
INSERT INTO proveedor VALUES (8, 'Taurus', '7373737373', 'taurusprov@gmail.com', '6262626262');
INSERT INTO proveedor VALUES (9, 'Teka', '7474747474', 'tekaprov@gmail.com', '6363636363');
INSERT INTO proveedor VALUES (10, 'Daewoo', '7575757575', 'daewooprov@gmail.com', '6464646464');
INSERT INTO proveedor VALUES (11, 'Bosch', '7676767676', 'boschprov@gmail.com', '6565656565');
INSERT INTO proveedor VALUES (12, 'Whirlpool', '7777777777', 'whirlpoolprov@gmail.com', '6666666666');
INSERT INTO proveedor VALUES (13, 'Samsung', '7878787878', 'samsungprov@gmail.com', '6767676767');
INSERT INTO proveedor VALUES (14, 'Koblenz', '7979797979', 'koblenzprov@gmail.com', '6868686868');
INSERT INTO proveedor VALUES (15, 'DeWalt', '8080808080', 'dewaltprov@gmail.com', '6969696969');
INSERT INTO proveedor VALUES (16, 'Solaris', '8181818181', 'solarisprov@gmail.com', '7070707070');
INSERT INTO proveedor VALUES (17, 'Panasonic','8282828282','panasonicprov@gmail.com','7171717171');
INSERT INTO proveedor VALUES (18, 'Mabe', '8383838383', 'mabeprov@gmail.com', '7272727272');
INSERT INTO proveedor VALUES (19, 'Haier', '8484848484', 'haierprov@gmail.com', '7373737373');
INSERT INTO proveedor VALUES (20, 'Sunbeam', '8585858585', 'sunbeamprov@gmail.com', '7474747474');



--TABLA PRODUCTO
-- Se reservaron los espacios correspondientes para lo que se insertará en pasos posteriores.



INSERT INTO producto VALUES (9, 'Refrigerador', 6000, 9000, 25, 5, 7000);
INSERT INTO producto VALUES (10, 'Congelador', 7000, 10000, 30, 10, 8000);
INSERT INTO producto VALUES (11, 'Horno', 8000, 11000, 35, 15, 9000);
INSERT INTO producto VALUES (12, 'Microondas', 9000, 12000, 40, 20, 10000);
INSERT INTO producto VALUES (13, 'Tostadora', 10000, 13000, 45, 1, 11000);
INSERT INTO producto VALUES (14, 'Lavavajillas', 11000, 14000, 50, 2, 12000);
INSERT INTO producto VALUES (15, 'Lavadora', 12000, 15000, 55, 3, 13000);
INSERT INTO producto VALUES (16, 'Secadora', 13000, 16000,60 ,4 ,14000);
INSERT INTO producto VALUES (17, 'Cafetera', 14000, 17000, 65, 5, 15000);
INSERT INTO producto VALUES (18, 'Aspiradora', 15000, 18000, 70, 6, 16000);
INSERT INTO producto VALUES (19, 'Licuadora', 16000, 19000, 75, 7,17000);
INSERT INTO producto VALUES (20, 'Procesador de alimentos', 17000, 20000, 80, 8, 18000);
INSERT INTO producto VALUES (21, 'Olla instantánea', 18000, 21000, 85, 9, 19000);
INSERT INTO producto VALUES (22, 'Arrocera', 19000, 22000, 90, 10, 20000);
INSERT INTO producto VALUES (23, 'Olla de cocción lenta', 20000, 23000, 95, 11, 21000);
INSERT INTO producto VALUES (24, 'Batidora de pie', 21000, 24000, 100, 12, 22000);
INSERT INTO producto VALUES (25, 'Exprimidor', 22000, 25000, 105, 13, 23000);
INSERT INTO producto VALUES (26, 'Gofrera', 23000, 26000, 110, 14, 24000);
INSERT INTO producto VALUES (27, 'Máquina de pan', 24000, 27000, 115, 15, 25000);
INSERT INTO producto VALUES (28, 'Máquina de helados', 25000, 28000, 120, 16, 260000);




-- TABLA VENTA


INSERT INTO venta VALUES (4,'2023/04/03', 1, 40400);
INSERT INTO venta VALUES (5, '2020/09/15', 2, 21400);
INSERT INTO venta VALUES (6, '2021/10/16', 3, 22400);
INSERT INTO venta VALUES (7, '2022/11/17', 4, 23400);
INSERT INTO venta VALUES (8, '2023/12/18', 5, 24400);
INSERT INTO venta VALUES (9, '2020/01/19', 6, 25400);
INSERT INTO venta VALUES (10, '2021/02/20', 7, 26400);
INSERT INTO venta VALUES (11, '2022/03/21', 8, 27400);
INSERT INTO venta VALUES (12, '2023/04/22', 9, 28400);
INSERT INTO venta VALUES (13, '2020/05/23', 10, 29400);
INSERT INTO venta VALUES (14, '2021/06/24', 11, 30400);
INSERT INTO venta VALUES (15, '2022/07/25', 12, 31400);
INSERT INTO venta VALUES (16, '2023/08/26', 13, 32400);
INSERT INTO venta VALUES (17, '2020/09/27', 14, 33400);
INSERT INTO venta VALUES (18, '2021/10/28', 15, 34400);
INSERT INTO venta VALUES (19, '2022/11/29', 16, 35400);
INSERT INTO venta VALUES (20, '2023/12/30', 17, 36400);
INSERT INTO venta VALUES (21,'2020/01/31', 18, 37400);
INSERT INTO venta VALUES (22,'2021/02/01', 19, 38400);
INSERT INTO venta VALUES (23,'2022/03/02', 20, 39400);



-- TABLA PRODUCTOVENDIDO


INSERT INTO productovendido VALUES (9, 4, 2, 2000);
INSERT INTO productovendido VALUES (10, 5, 3, 3000);
INSERT INTO productovendido VALUES (11, 6, 4, 4000);
INSERT INTO productovendido VALUES (9, 7, 5, 5000);
INSERT INTO productovendido VALUES (13, 8, 6, 6000);
INSERT INTO productovendido VALUES (11, 9, 7, 7000);
INSERT INTO productovendido VALUES (15, 10, 8, 8000);
INSERT INTO productovendido VALUES (18, 11, 9, 9000);
INSERT INTO productovendido VALUES (17, 12, 10, 10000);
INSERT INTO productovendido VALUES (9, 13, 1, 11000);
INSERT INTO productovendido VALUES (19, 14, 2, 12000);
INSERT INTO productovendido VALUES (20, 15, 3, 13000);
INSERT INTO productovendido VALUES (21, 16, 4, 14000);
INSERT INTO productovendido VALUES (14, 17,5, 15000);
INSERT INTO productovendido VALUES (23, 18,6, 16000);
INSERT INTO productovendido VALUES (12, 19,7, 17000);
INSERT INTO productovendido VALUES (23, 20,8, 18000);
INSERT INTO productovendido VALUES (9, 21,9, 19000);
INSERT INTO productovendido VALUES (10, 22,10, 20000);
INSERT INTO productovendido VALUES (15, 23, 1, 21000);


-- Se hicieron las modificaciones a la tabla 'cliente':

ALTER TABLE cliente ADD credito numeric(10,4);
ALTER TABLE cliente ADD deuda numeric(10,4);
ALTER TABLE cliente ADD credito_disponible numeric(10,4);
ALTER TABLE cliente ADD fecha_Alta timestamp;
ALTER TABLE cliente ADD fecha_Nacimiento date;

-- Se agregan valores faltantes en los registros de la tabla cliente:

UPDATE cliente SET credito=5000, deuda=2500, credito_disponible=2500, fecha_Alta='2023-06-14 17:47', fecha_Nacimiento='1997-07-11' WHERE (idcliente = 1);
UPDATE cliente SET credito=6000, deuda=3000, credito_disponible=3000, fecha_Alta='2023-06-15 18:48', fecha_Nacimiento='1998-08-12' WHERE (idcliente = 2);
UPDATE cliente SET credito=7000, deuda=3500, credito_disponible=3500, fecha_Alta='2023-06-16 19:49', fecha_Nacimiento='1999-09-13' WHERE (idcliente = 3);
UPDATE cliente SET credito=8000, deuda=4000, credito_disponible=4000, fecha_Alta='2023-06-17 20:50', fecha_Nacimiento='2000-10-14' WHERE (idcliente = 4);
UPDATE cliente SET credito=9000, deuda=4500, credito_disponible=4500, fecha_Alta='2023-06-18 21:51', fecha_Nacimiento='2001-11-15' WHERE (idcliente = 5);
UPDATE cliente SET credito=10000, deuda=5000, credito_disponible=5000, fecha_Alta='2023-06-19 22:52', fecha_Nacimiento='2002-12-16' WHERE (idcliente = 6);
UPDATE cliente SET credito=11000, deuda=5500, credito_disponible=5500, fecha_Alta='2023-06-20 23:53', fecha_Nacimiento='2003-01-17' WHERE (idcliente = 7);
UPDATE cliente SET credito=12000, deuda=6000, credito_disponible=6000, fecha_Alta='2023-06-21 09:54', fecha_Nacimiento='2004-02-18' WHERE (idcliente = 8);
UPDATE cliente SET credito=13000, deuda=6500, credito_disponible=6500, fecha_Alta='2023-06-22 10:55', fecha_Nacimiento='2005-03-19' WHERE (idcliente = 9);
UPDATE cliente SET credito=14000, deuda=7000, credito_disponible=7000, fecha_Alta='2023-06-23 11:56', fecha_Nacimiento='1970-04-20' WHERE (idcliente = 10);
UPDATE cliente SET credito=15000, deuda=7500, credito_disponible=7500, fecha_Alta='2023-06-24 12:57', fecha_Nacimiento='1971-05-21' WHERE (idcliente = 11);
UPDATE cliente SET credito=16000, deuda=8000, credito_disponible=8000, fecha_Alta='2023-06-25 13:58', fecha_Nacimiento='1972-06-22' WHERE (idcliente = 12);
UPDATE cliente SET credito=18000, deuda=9000, credito_disponible=9000, fecha_Alta='2023-06-26 14:59', fecha_Nacimiento='1973-07-23' WHERE (idcliente = 13);
UPDATE cliente SET credito=19000, deuda=9500, credito_disponible=9500, fecha_Alta='2023-06-27 15:00', fecha_Nacimiento='1974-08-24' WHERE (idcliente = 14);
UPDATE cliente SET credito=20000, deuda=10000, credito_disponible=10000, fecha_Alta='2023-06-28 16:01', fecha_Nacimiento='1975-09-25' WHERE (idcliente = 15);
UPDATE cliente SET credito=21000, deuda=10500, credito_disponible=10500, fecha_Alta='2023-06-29 17:02', fecha_Nacimiento='1976-10-26' WHERE (idcliente = 16);
UPDATE cliente SET credito=22000, deuda=11000, credito_disponible=11000, fecha_Alta='2023-06-30 18:03', fecha_Nacimiento='1977-11-27' WHERE (idcliente = 17);
UPDATE cliente SET credito=23000, deuda=11500, credito_disponible=11500, fecha_Alta='2023-07-01 19:04', fecha_Nacimiento='1978-12-28' WHERE (idcliente = 18);
UPDATE cliente SET credito=24000, deuda=12000, credito_disponible=12000, fecha_Alta='2023-07-02 20:05', fecha_Nacimiento='1979-01-29' WHERE (idcliente = 19);
UPDATE cliente SET credito=25000, deuda=12500, credito_disponible=12500, fecha_Alta='2023-07-03 21:06', fecha_Nacimiento='1980-02-28' WHERE (idcliente = 20);



-- Registrar los nombres de los proveedores LG, Yamaha, Samsung, Sony, Dell, HP. 


INSERT INTO proveedor VALUES (1, 'LG', '2121212121', 'lgprov@gmail.com', '1010101010');
INSERT INTO proveedor VALUES (2, 'Yamaha', '3131313131', 'yamahaprov@gmail.com', '0202020202');
INSERT INTO proveedor VALUES (3, 'Samsung', '4141414141', 'samsungrov@gmail.com', '0303030303');
INSERT INTO proveedor VALUES (4, 'Sony', '5151515151', 'sonyprov@gmail.com', '0404040404');
INSERT INTO proveedor VALUES (5, 'Dell', '6161616161', 'dellprov@gmail.com', '0505050505');
INSERT INTO proveedor VALUES (6, 'HP', '7171717171', 'hpprov@gmail.com', '6060606060');



walmart_2=> SELECT * FROM proveedor;
 idproveedor |  nombre   |  telefono  |          email          |    rfc     
-------------+-----------+------------+-------------------------+------------
           1 | LG        | 2121212121 | lgprov@gmail.com        | 1010101010
           2 | Yamaha    | 3131313131 | yamahaprov@gmail.com    | 0202020202
           3 | Samsung   | 4141414141 | samsungrov@gmail.com    | 0303030303
           4 | Sony      | 5151515151 | sonyprov@gmail.com      | 0404040404
           5 | Dell      | 6161616161 | dellprov@gmail.com      | 0505050505
           6 | HP        | 7171717171 | hpprov@gmail.com        | 6060606060
           7 | Miele     | 7272727272 | mieleprov@gmail.com     | 6161616161
           8 | Taurus    | 7373737373 | taurusprov@gmail.com    | 6262626262
           9 | Teka      | 7474747474 | tekaprov@gmail.com      | 6363636363
          10 | Daewoo    | 7575757575 | daewooprov@gmail.com    | 6464646464
          11 | Bosch     | 7676767676 | boschprov@gmail.com     | 6565656565
          12 | Whirlpool | 7777777777 | whirlpoolprov@gmail.com | 6666666666
          13 | Samsung   | 7878787878 | samsungprov@gmail.com   | 6767676767
          14 | Koblenz   | 7979797979 | koblenzprov@gmail.com   | 6868686868
          15 | DeWalt    | 8080808080 | dewaltprov@gmail.com    | 6969696969
          16 | Solaris   | 8181818181 | solarisprov@gmail.com   | 7070707070
          17 | Panasonic | 8282828282 | panasonicprov@gmail.com | 7171717171
          18 | Mabe      | 8383838383 | mabeprov@gmail.com      | 7272727272
          19 | Haier     | 8484848484 | haierprov@gmail.com     | 7373737373
          20 | Sunbeam   | 8585858585 | sunbeamprov@gmail.com   | 7474747474
(20 rows)



-- Registrar los siguientes productos con los datos como se indican (IdProducto, IdProveedor, Nombre, Existencia, PrecioSugerido, PrecioMinimo, PrecioCompra). 
-- (1, 1, Tele, 30, 5000,4000, 3000). 
-- (2, 1, DVd, 20, 1500, 1000, 900). 
-- (3, 1, Celular, 3, 2000,2000, 1200). 
-- (4, 2, Pantalla, 5, 15000,14000, 10000). 
-- (5, 2, BlueRay, 10, 5500,5300, 5000). 
-- (6, 3, Mp3 Player, 13, 900, 900, 500). 
-- (7, NULL, Compu, 15, 19000, 17000, 11500). 
-- (8, NULL, Monitor, 10, 19000, 17000, 11500). 

walmart_2=> SELECT * FROM producto;
 idproducto |         nombre          | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+-------------------------+--------------+---------------------+------------+-------------+--------------
          9 | Refrigerador            |    6000.0000 |           9000.0000 |    25.0000 |           5 |    7000.0000
         10 | Congelador              |    7000.0000 |          10000.0000 |    30.0000 |          10 |    8000.0000
         11 | Horno                   |    8000.0000 |          11000.0000 |    35.0000 |          15 |    9000.0000
         12 | Microondas              |    9000.0000 |          12000.0000 |    40.0000 |          20 |   10000.0000
         13 | Tostadora               |   10000.0000 |          13000.0000 |    45.0000 |           1 |   11000.0000
         14 | Lavavajillas            |   11000.0000 |          14000.0000 |    50.0000 |           2 |   12000.0000
         15 | Lavadora                |   12000.0000 |          15000.0000 |    55.0000 |           3 |   13000.0000
         16 | Secadora                |   13000.0000 |          16000.0000 |    60.0000 |           4 |   14000.0000
         17 | Cafetera                |   14000.0000 |          17000.0000 |    65.0000 |           5 |   15000.0000
         18 | Aspiradora              |   15000.0000 |          18000.0000 |    70.0000 |           6 |   16000.0000
         19 | Licuadora               |   16000.0000 |          19000.0000 |    75.0000 |           7 |   17000.0000
         20 | Procesador de alimentos |   17000.0000 |          20000.0000 |    80.0000 |           8 |   18000.0000
         21 | Olla instantánea        |   18000.0000 |          21000.0000 |    85.0000 |           9 |   19000.0000
         22 | Arrocera                |   19000.0000 |          22000.0000 |    90.0000 |          10 |   20000.0000
         23 | Olla de cocción lenta   |   20000.0000 |          23000.0000 |    95.0000 |          11 |   21000.0000
         24 | Batidora de pie         |   21000.0000 |          24000.0000 |   100.0000 |          12 |   22000.0000
         25 | Exprimidor              |   22000.0000 |          25000.0000 |   105.0000 |          13 |   23000.0000
         26 | Gofrera                 |   23000.0000 |          26000.0000 |   110.0000 |          14 |   24000.0000
         27 | Máquina de pan          |   24000.0000 |          27000.0000 |   115.0000 |          15 |   25000.0000
         28 | Máquina de helados      |   25000.0000 |          28000.0000 |   120.0000 |          16 |  260000.0000
(20 rows)


-- Sentencias:

INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (1,1,'Tele',30,5000,4000,3000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (2,4,'DVd',20,1500,1000,900);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (3,13,'Celular',3,2000,2000,1200);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (4,2,'Pantalla',5,15000,14000,10000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (5,2,'BlueRay',10,5500,5300,5000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (7, NULL, Compu, 15, 19000, 17000, 11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (7,5,'Compu',15,19000,17000,11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (8, NULL, 'Monitor', 10, 19000, 17000, 11500); 




walmart_2=> SELECT * FROM producto;
 idproducto |         nombre          | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+-------------------------+--------------+---------------------+------------+-------------+--------------
          9 | Refrigerador            |    6000.0000 |           9000.0000 |    25.0000 |           5 |    7000.0000
         10 | Congelador              |    7000.0000 |          10000.0000 |    30.0000 |          10 |    8000.0000
         11 | Horno                   |    8000.0000 |          11000.0000 |    35.0000 |          15 |    9000.0000
         12 | Microondas              |    9000.0000 |          12000.0000 |    40.0000 |          20 |   10000.0000
         13 | Tostadora               |   10000.0000 |          13000.0000 |    45.0000 |           1 |   11000.0000
         14 | Lavavajillas            |   11000.0000 |          14000.0000 |    50.0000 |           2 |   12000.0000
         15 | Lavadora                |   12000.0000 |          15000.0000 |    55.0000 |           3 |   13000.0000
         16 | Secadora                |   13000.0000 |          16000.0000 |    60.0000 |           4 |   14000.0000
         17 | Cafetera                |   14000.0000 |          17000.0000 |    65.0000 |           5 |   15000.0000
         18 | Aspiradora              |   15000.0000 |          18000.0000 |    70.0000 |           6 |   16000.0000
         19 | Licuadora               |   16000.0000 |          19000.0000 |    75.0000 |           7 |   17000.0000
         20 | Procesador de alimentos |   17000.0000 |          20000.0000 |    80.0000 |           8 |   18000.0000
         21 | Olla instantánea        |   18000.0000 |          21000.0000 |    85.0000 |           9 |   19000.0000
         22 | Arrocera                |   19000.0000 |          22000.0000 |    90.0000 |          10 |   20000.0000
         23 | Olla de cocción lenta   |   20000.0000 |          23000.0000 |    95.0000 |          11 |   21000.0000
         24 | Batidora de pie         |   21000.0000 |          24000.0000 |   100.0000 |          12 |   22000.0000
         25 | Exprimidor              |   22000.0000 |          25000.0000 |   105.0000 |          13 |   23000.0000
         26 | Gofrera                 |   23000.0000 |          26000.0000 |   110.0000 |          14 |   24000.0000
         27 | Máquina de pan          |   24000.0000 |          27000.0000 |   115.0000 |          15 |   25000.0000
         28 | Máquina de helados      |   25000.0000 |          28000.0000 |   120.0000 |          16 |  260000.0000
          1 | Tele                    |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
          2 | DVd                     |     900.0000 |           1500.0000 |    20.0000 |           4 |    1000.0000
          3 | Celular                 |    1200.0000 |           2000.0000 |     3.0000 |          13 |    2000.0000
          4 | Pantalla                |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay                 |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          7 | Compu                   |   11500.0000 |          19000.0000 |    15.0000 |           5 |   17000.0000
          8 | Monitor                 |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
(27 rows)


-- Registrar las siguientes Ventas. 

walmart_2=> SELECT * FROM venta;
 idventa |   fecha    | idcliente | montototal 
---------+------------+-----------+------------
       4 | 2023-04-03 |         1 | 40400.0000
       5 | 2020-09-15 |         2 | 21400.0000
       6 | 2021-10-16 |         3 | 22400.0000
       7 | 2022-11-17 |         4 | 23400.0000
       8 | 2023-12-18 |         5 | 24400.0000
       9 | 2020-01-19 |         6 | 25400.0000
      10 | 2021-02-20 |         7 | 26400.0000
      11 | 2022-03-21 |         8 | 27400.0000
      12 | 2023-04-22 |         9 | 28400.0000
      13 | 2020-05-23 |        10 | 29400.0000
      14 | 2021-06-24 |        11 | 30400.0000
      15 | 2022-07-25 |        12 | 31400.0000
      16 | 2023-08-26 |        13 | 32400.0000
      17 | 2020-09-27 |        14 | 33400.0000
      18 | 2021-10-28 |        15 | 34400.0000
      19 | 2022-11-29 |        16 | 35400.0000
      20 | 2023-12-30 |        17 | 36400.0000
      21 | 2020-01-31 |        18 | 37400.0000
      22 | 2021-02-01 |        19 | 38400.0000
      23 | 2022-03-02 |        20 | 39400.0000
(20 rows)


-- Venta 1, realizada al cliente con el id  2 con la fecha 2020/09/15, en la que se vendió: 2 celulares a 2000 pesos cada uno, 1 Mp3 player a 900 pesos cada uno, 3 blue ray  a 5500 cada uno. 

INSERT INTO venta VALUES (1, '2020/09/15', 2, 21400);

-- Venta 2, realizada al cliente con el id 5, en la fecha 2020/09/17, en la que se vendió: 2 blue ray en 5500 cada uno, 1 Tele en 5000. 

INSERT INTO venta VALUES (2, '2020/09/17', 5, 16000);

-- Venta 3, realizada al cliente con el id 2 en la fecha 2020/09/17, en la que se vendió: 2 pantallas en 15000 cada una

INSERT INTO venta VALUES (3, '2020/09/17', 2, 30000);

walmart_2=> INSERT INTO venta VALUES (1, '2020/09/15', 2, 21400);
INSERT 0 1
walmart_2=> INSERT INTO venta VALUES (2, '2020/09/17', 5, 16000);
INSERT 0 1
walmart_2=> INSERT INTO venta VALUES (3, '2020/09/17', 2, 30000);
INSERT 0 1
walmart_2=> SELECT * FROM venta;
 idventa |   fecha    | idcliente | montototal 
---------+------------+-----------+------------
       4 | 2023-04-03 |         1 | 40400.0000
       5 | 2020-09-15 |         2 | 21400.0000
       6 | 2021-10-16 |         3 | 22400.0000
       7 | 2022-11-17 |         4 | 23400.0000
       8 | 2023-12-18 |         5 | 24400.0000
       9 | 2020-01-19 |         6 | 25400.0000
      10 | 2021-02-20 |         7 | 26400.0000
      11 | 2022-03-21 |         8 | 27400.0000
      12 | 2023-04-22 |         9 | 28400.0000
      13 | 2020-05-23 |        10 | 29400.0000
      14 | 2021-06-24 |        11 | 30400.0000
      15 | 2022-07-25 |        12 | 31400.0000
      16 | 2023-08-26 |        13 | 32400.0000
      17 | 2020-09-27 |        14 | 33400.0000
      18 | 2021-10-28 |        15 | 34400.0000
      19 | 2022-11-29 |        16 | 35400.0000
      20 | 2023-12-30 |        17 | 36400.0000
      21 | 2020-01-31 |        18 | 37400.0000
      22 | 2021-02-01 |        19 | 38400.0000
      23 | 2022-03-02 |        20 | 39400.0000
       1 | 2020-09-15 |         2 | 21400.0000
       2 | 2020-09-17 |         5 | 16000.0000
       3 | 2020-09-17 |         2 | 30000.0000
(23 rows)


-- Actualiza los registros que tengan como Direccion_Estado a la Ciudad de Mexico a CDMX.
-- Consultamos los registros a cambiar con 
SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) FROM cliente WHERE Direccion_Estado = 'Ciudad de Mexico';


walmart_2=> SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) FROM cliente WHERE Direccion_Estado = 'Ciudad de Mexico';
                           row                           
---------------------------------------------------------
 (6,"Eduardo Antonio","Ciudad de Mexico",Iztacalco)
 (7,Eduardo,"Ciudad de Mexico",Iztacalco)
 (8,Andres,"Ciudad de Mexico",Iztapalapa)
 (10,Maria,"Ciudad de Mexico",Iztacalco)
 (11,Filomeno,"Ciudad de Mexico","Milpa Alta")
 (15,"Arnoldo Emanuel","Ciudad de Mexico",Cuauhtemoc)
 (16,"Juan Andres","Ciudad de Mexico","Milpa Alta")
 (17,Guadalupe,"Ciudad de Mexico","Magdalena Contreras")
 (18,Abril,"Ciudad de Mexico",GAM)
 (19,Abril,"Ciudad de Mexico","Gustavo A Madero")
 (20,Rosa,"Ciudad de Mexico",Coyoacan)
(11 rows)

BEGIN;
UPDATE cliente SET direccion_estado='CDMX' WHERE (direccion_estado = 'Ciudad de Mexico');
SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) FROM cliente WHERE (Direccion_Estado = 'CDMX');
ROLLBACK;

-- Se ejecuta la actualización

walmart_2=> UPDATE cliente SET direccion_estado='CDMX' WHERE (direccion_estado = 'Ciudad de Mexico');
SELECT (idcliente, nombre, direccion_estado, direccion_delegacion) FROM cliente WHERE (Direccion_Estado = 'CDMX');
UPDATE 11
                    row                    
-------------------------------------------
 (1,Juan,CDMX,"Gustavo A. Madero")
 (5,Emanuel,CDMX,Iztacalco)
 (6,"Eduardo Antonio",CDMX,Iztacalco)
 (7,Eduardo,CDMX,Iztacalco)
 (8,Andres,CDMX,Iztapalapa)
 (10,Maria,CDMX,Iztacalco)
 (11,Filomeno,CDMX,"Milpa Alta")
 (15,"Arnoldo Emanuel",CDMX,Cuauhtemoc)
 (16,"Juan Andres",CDMX,"Milpa Alta")
 (17,Guadalupe,CDMX,"Magdalena Contreras")
 (18,Abril,CDMX,GAM)
 (19,Abril,CDMX,"Gustavo A Madero")
 (20,Rosa,CDMX,Coyoacan)
(13 rows)


-- Actualiza los campos que tengan Tele como Televisor.
-- Consultamos con

SELECT * FROM producto WHERE (nombre = 'Tele');

walmart_2=> SELECT * FROM producto WHERE (nombre = 'Tele');
 idproducto | nombre | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+--------+--------------+---------------------+------------+-------------+--------------
          1 | Tele   |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(1 row)

BEGIN;
UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tele';
SELECT * FROM producto WHERE (nombre = 'Televisor');
ROLLBACK;

UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tele';
SELECT * FROM producto WHERE (nombre = 'Televisor');

-- Se ejecuta la actualización

walmart_2=> UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tele';
SELECT * FROM producto WHERE (nombre = 'Televisor');
UPDATE 1
 idproducto |  nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+-----------+--------------+---------------------+------------+-------------+--------------
          1 | Televisor |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(1 row)


