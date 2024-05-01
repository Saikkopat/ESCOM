
pg_dump -U dbusername dbname > dbexport.pgsql


psql -U username dbname < dbexport.pgsql

--- TABLA CLIENTES

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


INSERT INTO proveedor VALUES (1, 'LG', '2121212121', 'lgprov@gmail.com', '1010101010');
INSERT INTO proveedor VALUES (2, 'Yamaha', '3131313131', 'yamahaprov@gmail.com', '0202020202');
INSERT INTO proveedor VALUES (3, 'Samsung', '4141414141', 'samsungrov@gmail.com', '0303030303');
INSERT INTO proveedor VALUES (4, 'Sony', '5151515151', 'sonyprov@gmail.com', '0404040404');
INSERT INTO proveedor VALUES (5, 'Dell', '6161616161', 'dellprov@gmail.com', '0505050505');
INSERT INTO proveedor VALUES (6, 'HP', '7171717171', 'hpprov@gmail.com', '6060606060');
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

INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (1,1,'Tele',30,5000,4000,3000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (2,4,'DVd',20,1500,1000,900);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (3,13,'Celular',3,2000,2000,1200);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (4,2,'Pantalla',5,15000,14000,10000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (5,2,'BlueRay',10,5500,5300,5000);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (7, NULL, Compu, 15, 19000, 17000, 11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (7,5,'Compu',15,19000,17000,11500);
INSERT INTO producto (idproducto,idproveedor,nombre,existencia,preciosugeridoventa,preciominimo,preciocompra)VALUES (8, NULL, Monitor, 10, 19000, 17000, 11500); 
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


 idcliente            | integer                |           | not null | 
 nombre               | character varying(50)  |           |          | 
 primerapellido       | character varying(50)  |           |          | 
 segundoapellido      | character varying(50)  |           |          | 
 rfc                  | character varying(50)  |           |          | 
 telefono             | character varying(50)  |           |          | 
 correo               | character varying(200) |           |          | 
 direccion_pais       | character varying(100) |           |          | 
 direccion_estado     | character varying(100) |           |          | 
 direccion_delegacion | character varying(100) |           |          | 
 direccion_colonia    | character varying(100) |           |          | 
 direccion_calle      | character varying(100) |           |          | 
 direccion_numeroext  | character varying(100) |           |          | 
 direccion_numeroint  | character varying(100) |           |          | 
 direccion_cp  


INSERT INTO cliente VALUES (21, 'Lula','DaSilva',NULL,NULL,'9856478521',NULL,'Mexico','Estado de Mexico',NULL,'Sin nombre','Pueblo','45','21','696945');
INSERT INTO cliente VALUES (22, 'Hugo','Chavez',NULL,NULL,'9856478521',NULL,'Venezuela','Caracas',NULL,'Sin nombre','Pueblo','45','21','696945');

INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (21, 'Lula', 'DaSilva', 'Brazil', 'Rio de Janeiro', 2023-06-14 21:04, '1945-10-27');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (22, 'Jacinda ', 'Ardern ', 'Nueva Zelanda', 'Wellington ', 2023-06-14 21:04, '1980-07-26 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (23, 'Dan ', 'Schulman ', 'Estados Unidos ', 'New Jersey ', 2023-06-14 21:04, '1958-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (24, 'John ', 'Nkengasong ', 'Cameroon ', 'Yaoundé ', 2023-06-14 21:04, '1960-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (25, 'Jessica ', 'Tan ', 'Singapur ', ' ', 2023-06-14 21:04, '1972-01-01 ');
INSERT INTO cliente (idcliente, nombre, primerapellido, direccion_pais, direccion_estado, fecha_Alta, fecha_Nacimiento) VALUES (26,'Justin ','Welby ','Reino Unido ','London ',2023-06-14 21:04,'1956-01-06 ');
INSERT INTO cliente (idcliente, nombre, primerapellido,direccion_pais,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (27,'Stacey ','Abrams ','Estados Unidos ','Georgia ',2023-06-14 21:04,'1973-12-09 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (28,'Reshorna ','Fitzpatrick ','Estados Unidos ','Illinois ',2023-06-14 21:04,'1970-01-01 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (29,'Adar ','Poonawalla ','India ','Calcuta ',2023-06-14 21:04,'1981-01-14 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (30,'Dolly ','Parton ','Estados Unidos ','Tennessee ',2023-06-14 21:04,'1946-01-19 ');
INSERT INTO cliente (idcliente,nombre ,primerapellido ,direccion_pais ,direccion_estado ,fecha_Alta ,fecha_Nacimiento) VALUES (31,'Mike ','Sommers ','Estados Unidos ','Washington D.C. ',2023-06-14 21:04,'1970-01-01 ');

Tengo la tabla cliente con los atributos 
 idcliente            | integer                     |           | not null | 
 nombre               | character varying(50)       |           |          | 
 primerapellido       | character varying(50)       |           |          | 
 segundoapellido      | character varying(50)       |           |          | 
 rfc                  | character varying(50)       |           |          | 
 telefono             | character varying(50)       |           |          | 
 correo               | character varying(200)      |           |          | 
 direccion_pais       | character varying(100)      |           |          | 
 direccion_estado     | character varying(100)      |           |          | 
 direccion_delegacion | character varying(100)      |           |          | 
 direccion_colonia    | character varying(100)      |           |          | 
 direccion_calle      | character varying(100)      |           |          | 
 direccion_numeroext  | character varying(100)      |           |          | 
 direccion_numeroint  | character varying(100)      |           |          | 
 direccion_cp         | character varying(6)        |           |          | 
 credito              | numeric(10,4)               |           |          | 
 deuda                | numeric(10,4)               |           |          | 
 credito_disponible   | numeric(10,4)               |           |          | 
 fecha_alta           | timestamp without time zone |           |          | 
 fecha_nacimiento 



Tengo la tabla producto con los atributos idproducto, nombre, preciocompra, preciosugeridoventa, existencia, idproveedor, preciominimo. Dame 20 ejemplos como INSERT INTO producto VALUES (8, 'Microondas', 5000, 8000 ,20 ,1 ,7000);, a partir del idproducto 9, con nombre de algun electrodomestico y con idproveedor con valores aleatorios entre 1 y 20.

Tengo la tabla venta con los atributos idventa, fecha, idcliente, montototal. Dame 20 ejemplos como INSERT INTO venta VALUES (4, '2020/09/15', 2, 21400);, a partir del idventa 4, con fechas aleatorias entre 2020 y 2023, con idcliente aleatorios entre 1 y 20, y montototal aleatorios entre 9000 y 28000.

SELECT MAX(preciosugeridoventa) FROM producto;
SELECT MIN(preciosugeridoventa) FROM producto;

Tengo la tabla productovendido con los atributos idproductovendido, idventa, cantidad, precioventa. Dame 20 ejemplos como INSERT INTO productovendido VALUES (1, 1, 2, 2000);, con idproductovendido aleatorios entre 9 y 28, idventa aleatorios entre 4 y 23, cantidad aleatorias entre 1 y 10 y montototal aleatorios entre 9000 y 1000000.

Tengo la tabla cliente con los atributos credito, deuda, credito_disponible, fecha_Alta, fecha_Nacimiento. Dame 20 ejemplos como UPDATE cliente SET credito=5000, deuda=2500, credito_disponible=2500, fecha_Alta='2023-06-14 17:47', fecha_Nacimiento='1997-07-11' WHERE (idcliente = 1);, con credito_disponible = credito - deuda y valores aleatorios entre 0 y 25000, fecha_Alta aleatorios entre 2020 y 2023 entre las 9:00 y 23:00 horas, y fecha_Nacimiento aletarios entre 1970 y 2005, y idcliente a partir del 1.

INSERT INTO venta VALUES (4, '2020/09/15', 2, 21400);

COPY employees TO 'C:tmpemployees_db.csv'  WITH DELIMITER ',' CSV HEADER;






 Venta 1, realizada al cliente con el id  2 con la fecha 2020/09/15, en la que se vendió: 2 celulares a 2000 pesos cada uno, 1 Mp3 player a 900 pesos cada uno, 3 blue ray  a 5500 cada uno. 


 idventa    | integer       |           | not null | 
 fecha      | date          |           |          | 
 idcliente  | integer       |           |          | 
 montototal | numeric(10,4) |           |          | 


INSERT INTO venta VALUES (1, '2020/09/15', 2, 21400);

Venta 2, realizada al cliente con el id 5, en la fecha 2020/09/17, en la que se vendió: 2 blue ray en 5500 cada uno, 1 Tele en 5000. 

INSERT INTO venta VALUES (2, '2020/09/17', 5, 16000);

Venta 3, realizada al cliente con el id 2 en la fecha 2020/09/17, en la que se vendió: 2 pantallas en 15000 cada una

INSERT INTO venta VALUES (3, '2020/09/17', 2, 30000);

Actualiza los campos que tengan Tele como Televisor.

UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tele';

Actualiza los registros que tengan como Direccion_Estado a la Ciudad de Mexico a CDMX.

UPDATE producto SET nombre='CDMX' WHERE nombre = 'Ciudad de Mexico';

alumno@ESCOM:~$ psql -d postgres
psql (12.14 (Ubuntu 12.14-0ubuntu0.20.04.1))
Type "help" for help.

postgres=# \dt
Did not find any relations.
postgres=# \l
postgres=# \c empresa
You are now connected to database "empresa" as user "alumno".
empresa=# \dt
          List of relations
 Schema |   Name    | Type  | Owner  
--------+-----------+-------+--------
 public | empleado2 | table | alumno
 public | materia   | table | alumno
 public | nomina    | table | alumno
(3 rows)

empresa=# \q
alumno@ESCOM:~$ psql -d postgres
psql (12.14 (Ubuntu 12.14-0ubuntu0.20.04.1))
Type "help" for help.

postgres=# \l
postgres=# \C EMPRESA
Title is "EMPRESA".
postgres=# \c EMPRESA
You are now connected to database "EMPRESA" as user "alumno".
EMPRESA=# \dt
Did not find any relations.
EMPRESA=# \q
alumno@ESCOM:~$ psql -d postgres
psql (12.14 (Ubuntu 12.14-0ubuntu0.20.04.1))
Type "help" for help.

postgres=# \l
postgres=# \c walmart
You are now connected to database "walmart" as user "alumno".
walmart=# \dt
             List of relations
 Schema |      Name       | Type  | Owner  
--------+-----------------+-------+--------
 public | cliente         | table | alumno
 public | producto        | table | alumno
 public | productovendido | table | alumno
 public | proveedor       | table | alumno
 public | venta           | table | alumno
(5 rows)

walmart=# \d cliente
                             Table "public.cliente"
        Column        |          Type          | Collation | Nullable | Default 
----------------------+------------------------+-----------+----------+---------
 idcliente            | integer                |           | not null | 
 nombre               | character varying(50)  |           |          | 
 primerapellido       | character varying(50)  |           |          | 
 segundoapellido      | character varying(50)  |           |          | 
 rfc                  | character varying(50)  |           |          | 
 telefono             | character varying(50)  |           |          | 
 correo               | character varying(200) |           |          | 
 direccion_pais       | character varying(100) |           |          | 
 direccion_estado     | character varying(100) |           |          | 
 direccion_delegacion | character varying(100) |           |          | 
 direccion_colonia    | character varying(100) |           |          | 
 direccion_calle      | character varying(100) |           |          | 
 direccion_numeroext  | character varying(100) |           |          | 
 direccion_numeroint  | character varying(100) |           |          | 
 direccion_cp         | character varying(6)   |           |          | 
Indexes:
    "cliente_pkey" PRIMARY KEY, btree (idcliente)
Referenced by:
    TABLE "venta" CONSTRAINT "fk_idcliente" FOREIGN KEY (idcliente) REFERENCES cliente(idcliente)

walmart=# INSERT INTO cliente (nombre, primerapellido, segundoapellido, rfc, telefono, correo, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numeroext, direccion_numeroint, direccion_cp) VALUES ('Juan','Perez','Lopez','0101010101','2121212121','jpl@mail.com','Mexico','CDMX','Gustavo A. Madero','Lindavista','Norte 184','55','21','515151');
ERROR:  null value in column "idcliente" violates not-null constraint
DETAIL:  Failing row contains (null, Juan, Perez, Lopez, 0101010101, 2121212121, jpl@mail.com, Mexico, CDMX, Gustavo A. Madero, Lindavista, Norte 184, 55, 21, 515151).
walmart=# INSERT INTO cliente  VALUES (1, 'Juan','Perez','Lopez','0101010101','2121212121','jpl@mail.com','Mexico','CDMX','Gustavo A. Madero','Lindavista','Norte 184','55','21','515151');
INSERT 0 1
walmart=# SELECT * FROM cliente;
walmart=# INSERT INTO cliente VALUES (2, 'Andres','Galicia','Juarez','0202020202','5151515151','agj@mail.com','Mexico','Mexico','Tlalnepantla','Tizayuca','Rio 152','21','75', '616161');
INSERT 0 1
walmart=# INSERT INTO cliente VALUES (3, 'Alexander','Perdomo','Andrade','0303030303','6161616161','apa@mail.com','Mexico','Nezahualcoyolt','Agua azul','Vicente Villada','75','31','700707');
INSERT 0 1
walmart=# \dt proveedor
          List of relations
 Schema |   Name    | Type  | Owner  
--------+-----------+-------+--------
 public | proveedor | table | alumno
(1 row)

walmart=# \d proveedor
                       Table "public.proveedor"
   Column    |          Type          | Collation | Nullable | Default 
-------------+------------------------+-----------+----------+---------
 idproveedor | integer                |           | not null | 
 nombre      | character varying(50)  |           |          | 
 telefono    | character varying(50)  |           |          | 
 email       | character varying(200) |           |          | 
 rfc         | character varying(10)  |           |          | 
Indexes:
    "proveedor_pkey" PRIMARY KEY, btree (idproveedor)
Referenced by:
    TABLE "producto" CONSTRAINT "fk_idproveedor" FOREIGN KEY (idproveedor) REFERENCES proveedor(idproveedor)

walmart=# \d venta
                    Table "public.venta"
   Column   |     Type      | Collation | Nullable | Default 
------------+---------------+-----------+----------+---------
 idventa    | integer       |           | not null | 
 fecha      | date          |           |          | 
 idcliente  | integer       |           |          | 
 montototal | numeric(10,4) |           |          | 
Indexes:
    "venta_pkey" PRIMARY KEY, btree (idventa)
Foreign-key constraints:
    "fk_idcliente" FOREIGN KEY (idcliente) REFERENCES cliente(idcliente)
Referenced by:
    TABLE "productovendido" CONSTRAINT "fk_idventa" FOREIGN KEY (idventa) REFERENCES venta(idventa)

walmart=# \dt
             List of relations
 Schema |      Name       | Type  | Owner  
--------+-----------------+-------+--------
 public | cliente         | table | alumno
 public | producto        | table | alumno
 public | productovendido | table | alumno
 public | proveedor       | table | alumno
 public | venta           | table | alumno
(5 rows)

walmart=# INSERT INTO proveedor VALUES (1, 'LG', '2121212121', 'lgprov@gmail.com', '1010101010');
INSERT 0 1
walmart=# INSERT INTO proveedor VALUES (2, 'Yamaha', '3131313131', 'yamahaprov@gmail.com', '0202020202');
INSERT 0 1
walmart=# 
walmart=# INSERT INTO proveedor VALUES (3, 'Samsung', '4141414141', 'samsungrov@gmail.com', '0303030303');
INSERT 0 1
walmart=# INSERT INTO proveedor VALUES (4, 'Sony', '5151515151', 'sonyprov@gmail.com', '0404040404');
INSERT 0 1
walmart=# INSERT INTO proveedor VALUES (5, 'Dell', '6161616161', 'dellprov@gmail.com', '0505050505');
INSERT 0 1
walmart=# INSERT INTO proveedor VALUES (6, 'HP', '7171717171', 'hpprov@gmail.com', '6060606060');
INSERT 0 1
walmart=# SELECT * FROM proveedor;
 idproveedor | nombre  |  telefono  |        email         |    rfc     
-------------+---------+------------+----------------------+------------
           1 | LG      | 2121212121 | lgprov@gmail.com     | 1010101010
           2 | Yamaha  | 3131313131 | yamahaprov@gmail.com | 0202020202
           3 | Samsung | 4141414141 | samsungrov@gmail.com | 0303030303
           4 | Sony    | 5151515151 | sonyprov@gmail.com   | 0404040404
           5 | Dell    | 6161616161 | dellprov@gmail.com   | 0505050505
           6 | HP      | 7171717171 | hpprov@gmail.com     | 6060606060
(6 rows)

walmart=# \d producto
                           Table "public.producto"
       Column        |         Type          | Collation | Nullable | Default 
---------------------+-----------------------+-----------+----------+---------
 idproducto          | integer               |           | not null | 
 nombre              | character varying(50) |           |          | 
 preciocompra        | numeric(10,4)         |           |          | 
 preciosugeridoventa | numeric(10,4)         |           |          | 
 existencia          | numeric(10,4)         |           |          | 
 idproveedor         | integer               |           |          | 
 preciominimo        | numeric(10,4)         |           |          | 
Indexes:
    "producto_pkey" PRIMARY KEY, btree (idproducto)
Foreign-key constraints:
    "fk_idproveedor" FOREIGN KEY (idproveedor) REFERENCES proveedor(idproveedor)
Referenced by:
    TABLE "productovendido" CONSTRAINT "fk_idproducto" FOREIGN KEY (idproductovendido) REFERENCES producto(idproducto)

walmart=# ^C
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciocompra, preciosugeridoventa, preciominimo, preciocompra) VALUES (1, 1, Tele, 30, 5000,4000, 3000);
ERROR:  column "preciocompra" specified more than once
LINE 1: ... preciocompra, preciosugeridoventa, preciominimo, preciocomp...
                                                             ^
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (1, 1, Tele, 30, 5000,4000, 3000);
ERROR:  column "tele" does not exist
LINE 1: ...oventa, preciominimo, preciocompra) VALUES (1, 1, Tele, 30, ...
                                                             ^
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (1, 1, 'Tele', 30, 5000,4000, 3000);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (2, 1, 'DVd', 20, 1500, 1000, 900);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (3, 1, 'Celular', 3, 2000,2000, 1200);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (4, 2, 'Pantalla', 5, 15000,14000, 10000);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (5, 2, 'BlueRay', 10, 5500,5300, 5000);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (6, 3, 'Mp3 Player', 13, 900, 900, 500);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (7, NULL, 'Compu', 15, 19000, 17000, 11500);
INSERT 0 1
walmart=# INSERT INTO producto (idproducto, idproveedor, nombre, existencia, preciosugeridoventa, preciominimo, preciocompra) VALUES (8, NULL, 'Monitor', 10, 19000, 17000, 11500);
INSERT 0 1
walmart=# SELECT * FROM producto;
 idproducto |   nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+------------+--------------+---------------------+------------+-------------+--------------
          1 | Tele       |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
          2 | DVd        |     900.0000 |           1500.0000 |    20.0000 |           1 |    1000.0000
          3 | Celular    |    1200.0000 |           2000.0000 |     3.0000 |           1 |    2000.0000
          4 | Pantalla   |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay    |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          6 | Mp3 Player |     500.0000 |            900.0000 |    13.0000 |           3 |     900.0000
          7 | Compu      |   11500.0000 |          19000.0000 |    15.0000 |             |   17000.0000
          8 | Monitor    |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
(8 rows)

walmart=# INSERT INTO cliente VALUES (5, 'Emanuel','Reyes','Galaviz','1010101010','4545454545','erg@mail.com','CDMX','Iztacalco','Peñon de los baños','Oriente 150','45','1','55664');
INSERT 0 1
walmart=# INSERT INTO cliente VALUES (4, 'Juan','Hernandez','Lopez','5050505050','8585858585','jhl@mail.com','Mexico','Nezahualcoyolt','El Sol','Lomas verdes','25','3','56334');
INSERT 0 1
walmart=# \d venta
                    Table "public.venta"
   Column   |     Type      | Collation | Nullable | Default 
------------+---------------+-----------+----------+---------
 idventa    | integer       |           | not null | 
 fecha      | date          |           |          | 
 idcliente  | integer       |           |          | 
 montototal | numeric(10,4) |           |          | 
Indexes:
    "venta_pkey" PRIMARY KEY, btree (idventa)
Foreign-key constraints:
    "fk_idcliente" FOREIGN KEY (idcliente) REFERENCES cliente(idcliente)
Referenced by:
    TABLE "productovendido" CONSTRAINT "fk_idventa" FOREIGN KEY (idventa) REFERENCES venta(idventa)

walmart=# INSERT INTO venta VALUES (1, '2020/09/15', 2, 21400);
INSERT 0 1
walmart=# INSERT INTO venta VALUES (2, '2020/09/17', 5, 16000);
INSERT 0 1
walmart=# INSERT INTO venta VALUES (3, '2020/09/17', 2, 30000);
INSERT 0 1
walmart=# SELECT * FROM producto WHERE nombre='Tel';
 idproducto | nombre | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+--------+--------------+---------------------+------------+-------------+--------------
(0 rows)

walmart=# SELECT * FROM producto WHERE (nombre='Tel');
 idproducto | nombre | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+--------+--------------+---------------------+------------+-------------+--------------
(0 rows)

walmart=# SELECT * FROM producto;
 idproducto |   nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+------------+--------------+---------------------+------------+-------------+--------------
          1 | Tele       |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
          2 | DVd        |     900.0000 |           1500.0000 |    20.0000 |           1 |    1000.0000
          3 | Celular    |    1200.0000 |           2000.0000 |     3.0000 |           1 |    2000.0000
          4 | Pantalla   |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay    |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          6 | Mp3 Player |     500.0000 |            900.0000 |    13.0000 |           3 |     900.0000
          7 | Compu      |   11500.0000 |          19000.0000 |    15.0000 |             |   17000.0000
          8 | Monitor    |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
(8 rows)

walmart=# SELECT * FROM producto WHERE (nombre='Tele');
 idproducto | nombre | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+--------+--------------+---------------------+------------+-------------+--------------
          1 | Tele   |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(1 row)



--Modificaciones a la tabla

ALTER TABLE cliente ADD credito numeric(10,4);
ALTER TABLE cliente ADD deuda numeric(10,4);
ALTER TABLE cliente ADD credito_disponible numeric(10,4);

--2001-09-29 00:00

ALTER TABLE cliente ADD fecha_Alta timestamp;

ALTER TABLE cliente ADD fecha_Nacimiento date;

--SELECTSSSS

--Los clientes con el nombre de Eduardo. 

SELECT (idcliente, nombre) from cliente WHERE (nombre LIKE '%Eduardo%');

--Los clientes que no se llamen Eduardo. 

SELECT (idcliente, nombre) from cliente WHERE (nombre NOT LIKE '%Eduardo%');








--------------------------------------------------------------------------------------------------------------------------------------------------




walmart=# UPDATE producto SET (nombre = 'Televisor') WHERE (nombre = 'Tel');
ERROR:  syntax error at or near "="
                                    ^
walmart=# UPDATE producto SET (nombre='Televisor') WHERE (nombre='Tel');
ERROR:  syntax error at or near "="
LINE 1: UPDATE producto SET (nombre='Televisor') WHERE (nombre='Tel'...
                                   ^
walmart=# UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tel';
UPDATE 0
walmart=# SELECT * FROM producto;
 idproducto |   nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+------------+--------------+---------------------+------------+-------------+--------------
          1 | Tele       |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
          2 | DVd        |     900.0000 |           1500.0000 |    20.0000 |           1 |    1000.0000
          3 | Celular    |    1200.0000 |           2000.0000 |     3.0000 |           1 |    2000.0000
          4 | Pantalla   |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay    |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          6 | Mp3 Player |     500.0000 |            900.0000 |    13.0000 |           3 |     900.0000
          7 | Compu      |   11500.0000 |          19000.0000 |    15.0000 |             |   17000.0000
          8 | Monitor    |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
(8 rows)

walmart=# SELECT * FROM producto WHERE (nombre='Tele');
 idproducto | nombre | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+--------+--------------+---------------------+------------+-------------+--------------
          1 | Tele   |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(1 row)

walmart=# UPDATE producto SET nombre='Televisor' WHERE nombre = 'Tele';
UPDATE 1
walmart=# SELECT * FROM producto;
 idproducto |   nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+------------+--------------+---------------------+------------+-------------+--------------
          2 | DVd        |     900.0000 |           1500.0000 |    20.0000 |           1 |    1000.0000
          3 | Celular    |    1200.0000 |           2000.0000 |     3.0000 |           1 |    2000.0000
          4 | Pantalla   |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay    |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          6 | Mp3 Player |     500.0000 |            900.0000 |    13.0000 |           3 |     900.0000
          7 | Compu      |   11500.0000 |          19000.0000 |    15.0000 |             |   17000.0000
          8 | Monitor    |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
          1 | Televisor  |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(8 rows)

walmart=# SELECT * FROM venta;
 idventa |   fecha    | idcliente | montototal 
---------+------------+-----------+------------
       1 | 2020-09-15 |         2 | 21400.0000
       2 | 2020-09-17 |         5 | 16000.0000
       3 | 2020-09-17 |         2 | 30000.0000
(3 rows)

walmart=# SELECT * FROM proveedor;
 idproveedor | nombre  |  telefono  |        email         |    rfc     
-------------+---------+------------+----------------------+------------
           1 | LG      | 2121212121 | lgprov@gmail.com     | 1010101010
           2 | Yamaha  | 3131313131 | yamahaprov@gmail.com | 0202020202
           3 | Samsung | 4141414141 | samsungrov@gmail.com | 0303030303
           4 | Sony    | 5151515151 | sonyprov@gmail.com   | 0404040404
           5 | Dell    | 6161616161 | dellprov@gmail.com   | 0505050505
           6 | HP      | 7171717171 | hpprov@gmail.com     | 6060606060
(6 rows)

walmart=# SELECT * FROM prducto;
ERROR:  relation "prducto" does not exist
LINE 1: SELECT * FROM prducto;
                      ^
walmart=# SELECT * FROM producto;
 idproducto |   nombre   | preciocompra | preciosugeridoventa | existencia | idproveedor | preciominimo 
------------+------------+--------------+---------------------+------------+-------------+--------------
          2 | DVd        |     900.0000 |           1500.0000 |    20.0000 |           1 |    1000.0000
          3 | Celular    |    1200.0000 |           2000.0000 |     3.0000 |           1 |    2000.0000
          4 | Pantalla   |   10000.0000 |          15000.0000 |     5.0000 |           2 |   14000.0000
          5 | BlueRay    |    5000.0000 |           5500.0000 |    10.0000 |           2 |    5300.0000
          6 | Mp3 Player |     500.0000 |            900.0000 |    13.0000 |           3 |     900.0000
          7 | Compu      |   11500.0000 |          19000.0000 |    15.0000 |             |   17000.0000
          8 | Monitor    |   11500.0000 |          19000.0000 |    10.0000 |             |   17000.0000
          1 | Televisor  |    3000.0000 |           5000.0000 |    30.0000 |           1 |    4000.0000
(8 rows)

walmart=# \d productovendido
                   Table "public.productovendido"
      Column       |     Type      | Collation | Nullable | Default 
-------------------+---------------+-----------+----------+---------
 idproductovendido | integer       |           |          | 
 idventa           | integer       |           |          | 
 cantidad          | numeric(10,4) |           |          | 
 precioventa       | numeric(10,4) |           |          | 
Foreign-key constraints:
    "fk_idproducto" FOREIGN KEY (idproductovendido) REFERENCES producto(idproducto)
    "fk_idventa" FOREIGN KEY (idventa) REFERENCES venta(idventa)

walmart=# \d productovendido
                   Table "public.productovendido"
      Column       |     Type      | Collation | Nullable | Default 
-------------------+---------------+-----------+----------+---------
 idproductovendido | integer       |           |          | 
 idventa           | integer       |           |          | 
 cantidad          | numeric(10,4) |           |          | 
 precioventa       | numeric(10,4) |           |          | 
Foreign-key constraints:
    "fk_idproducto" FOREIGN KEY (idproductovendido) REFERENCES producto(idproducto)
    "fk_idventa" FOREIGN KEY (idventa) REFERENCES venta(idventa)

walmart=# pg_dump -U alumno -h localhost walmart >> sqlfile.sql
walmart-# 


--Los que NO se llaman Edgar o Juan 

SELECT (idcliente, nombre) FROM cliente WHERE (nombre NOT LIKE '%Edgar%') AND (nombre NOT LIKE '%Juan%');

--Los que tienen un credito entre 5000 y 10000 

SELECT (idcliente, nombre) FROM cliente WHERE (credido BETWEEN 50000 AND 10000);

--Los que se llamen Eduardo y su apellido paterno es Martínez. 

SELECT (idcliente, nombre) FROM cliente WHERE (nombre LIKE '%Eduardo%') AND (apaterno LIKE '%Martinez%');

--Los que su apellido paterno es Alvarado y NO se llaman Juan. 

SELECT (idcliente, nombre) FROM cliente WHERE (apaterno LIKE '%Alvarado%') AND (nombre NOT LIKE '%Juan%');

--Los que se llaman Blanca o su apellido paterno es Rodríguez. 

SELECT (idcliente, nombre) FROM cliente WHERE (nombre LIKE '%Blanca%') OR (apaterno LIKE '%Rodriguez%');

--Los que cualquiera de sus apellidos es Paz. 

SELECT (idcliente, nombre) FROM cliente WHERE (apaterno LIKE '%Paz%') OR (amaterno LIKE '%Paz%');

--Los que su apellido paterno es Ambriz, Pérez o García. 

SELECT (idcliente, nombre) FROM cliente WHERE (apaterno LIKE '%Ambriz%') OR (apaterno LIKE '%Perez%') OR (apaterno LIKE '%Garcia%');

--Los que se llaman Abril y su apellido paterno es Govea o Pérez. 

SELECT (idcliente, nombre) FROM cliente WHERE (nombre LIKE '%Abril%') AND (apaterno LIKE '%Govea%' OR apaterno LIKE '%Perez%');

--Los de la delegación Iztacalco, GAM y Benito Juarez. 

SELECT (idcliente, nombre) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%') OR (direccion_delegacion LIKE '%GAM%') OR (direccion_delegacion LIKE '%Benito Juarez%');

--Los que viven en Iztacalco o Coyoacan y su deuda está en 10000 y 20000 

SELECT (idcliente, nombre) FROM cliente WHERE (direccion_delegacion LIKE '%Iztacalco%' OR direccion_delegacion LIKE '%Coyoacan%') AND (deuda BETWEEN 10000 AND 20000);






------------------------------------------------------------------------------------------------------------------------------------------------



--Muestra a los clientes que todavía no tienen asignado crédito. 

SELECT (idcliente, nombre) FROM cliente WHERE (credito = NULL);

--Muestra a los clientes que no tienen apellido materno. 

SELECT (idcliente, nombre) FROM cliente WHERE (amaterno = NULL);

--Muestra solo a los clientes que si tienen asignado un RFC. 

SELECT (idcliente, nombre) FROM cliente WHERE (rfc != NULL);

--Muestra solo a los clientes que si tienen correo electrónico registrado. 

SELECT (idcliente, nombre) FROM cliente WHERE (correo != NULL);

--Muestra solo a los productos que si tienen precio sugerido de venta 

SELECT (idproducto, nombre, preciosugeridoventa) FROM producto WHERE (preciosugeridoventa != NULL);

--Muestra a los clientes que no tienen delegación especificada   

SELECT (idcliente, nombre) FROM cliente WHERE (direccion_delegacion != NULL);




Dame 36 ejemplos como UPDATE cliente SET fecha_Alta='2010-05-31' WHERE idcliente=1;, donde fecha_Alta sean fechas aleatorias entre 2008 y 2023.

UPDATE cliente SET fecha_Alta='2008-01-15' WHERE idcliente=2;
UPDATE cliente SET fecha_Alta='2009-02-28' WHERE idcliente=3;
UPDATE cliente SET fecha_Alta='2010-03-31' WHERE idcliente=4;
UPDATE cliente SET fecha_Alta='2011-04-30' WHERE idcliente=5;
UPDATE cliente SET fecha_Alta='2012-05-31' WHERE idcliente=6;
UPDATE cliente SET fecha_Alta='2013-06-30' WHERE idcliente=7;
UPDATE cliente SET fecha_Alta='2014-12-28' WHERE idcliente=8;
UPDATE cliente SET fecha_Alta='2015-08-31' WHERE idcliente=9;
UPDATE cliente SET fecha_Alta='2016-09-30' WHERE idcliente=10;
UPDATE cliente SET fecha_Alta='2017-10-31' WHERE idcliente=11;
UPDATE cliente SET fecha_Alta='2018-11-30' WHERE idcliente=12;
UPDATE cliente SET fecha_Alta='2019-12-31' WHERE idcliente=13;
UPDATE cliente SET fecha_Alta='2020-01-31' WHERE idcliente=14;
UPDATE cliente SET fecha_Alta='2021-02-28' WHERE idcliente=15;
UPDATE cliente SET fecha_Alta='2022-03-31' WHERE idcliente=16;
UPDATE cliente SET fecha_Alta='2023-04-30' WHERE idcliente=17;
UPDATE cliente SET fecha_Alta='2008-05-31' WHERE idcliente=18;
UPDATE cliente SET fecha_Alta='2009-02-27' WHERE idcliente=19;
UPDATE cliente SET fecha_Alta='2010-07-31' WHERE idcliente=20;
UPDATE cliente SET fecha_Alta='2011-08-31' WHERE idcliente=21;
UPDATE cliente SET fecha_Alta='2012-09-30' WHERE idcliente=22;
UPDATE cliente SET fecha_Alta='2013-10-31' WHERE idcliente=23;
UPDATE cliente SET fecha_Alta='2014-11-30' WHERE idcliente=24;
UPDATE cliente SET fecha_Alta='2015-12-31' WHERE idcliente=25;
UPDATE cliente SET fecha_Alta='2016-01-31' WHERE idcliente=26;
UPDATE cliente SET fecha_Alta='2017-02-28' WHERE idcliente=27;
UPDATE cliente SET fecha_Alta='2018-03-31' WHERE idcliente=28;
UPDATE cliente SET fecha_Alta='2019-04-30' WHERE idcliente=29;
UPDATE cliente SET fecha_Alta='2020-12-05' WHERE idcliente=30;
UPDATE cliente SET fecha_Alta='2021-06-30' WHERE idcliente=31;
UPDATE cliente SET fecha_Alta='2022-07-31' WHERE idcliente=32;
UPDATE cliente SET fecha_Alta='2023-08-31' WHERE idcliente=33;
UPDATE cliente SET fecha_Alta='2008-09-30' WHERE idcliente=34;
UPDATE cliente SET fecha_Alta='2009-02-15' WHERE idcliente=35;
UPDATE cliente SET fecha_Alta='2010-11-30' WHERE idcliente=36;







