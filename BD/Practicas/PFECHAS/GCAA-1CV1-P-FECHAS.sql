
-- PRACTICA FECHAS, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.

-- Muestra la fecha actual. 
SELECT NOW();

walmart_2=> SELECT NOW();
              now              
-------------------------------
 2023-06-15 08:16:19.480286-06
(1 row)

-- ¿Qué fecha será dentro de una semana? 
SELECT DATE(NOW()) + INTERVAL '1 week';

walmart_2=> SELECT DATE(NOW()) + INTERVAL '1 week';
      ?column?       
---------------------
 2023-06-22 00:00:00
(1 row)

-- ¿Cuál es la antigüedad de los clientes? (años que han pasado desde que se dieron de alta). 
SELECT idcliente, nombre, fecha_Alta, DATE(NOW()) - DATE(fecha_Alta) AS Antiguedad FROM cliente;
SELECT idcliente, nombre, fecha_Alta, AGE(NOW()::DATE, fecha_Alta) AS Antiguedad FROM cliente;

 idcliente |     nombre      |         fecha_alta         | antiguedad 
-----------+-----------------+----------------------------+------------
         1 | Juan            | 2023-06-14 17:47:00        |          1
         2 | Andres          | 2023-06-15 18:48:00        |          0
         3 | Alexander       | 2023-06-16 19:49:00        |         -1
         4 | Juan            | 2023-06-17 20:50:00        |         -2
         5 | Emanuel         | 2023-06-18 21:51:00        |         -3
        15 | Arnoldo Emanuel | 2023-06-28 16:01:00        |        -13
        16 | Juan Andres     | 2023-06-29 17:02:00        |        -14
        17 | Guadalupe       | 2023-06-30 18:03:00        |        -15
         9 | Elio            | 2023-06-22 10:55:00        |         -7
        12 | Daniel          | 2023-06-25 13:58:00        |        -10
        13 | Guadalupe       | 2023-06-26 14:59:00        |        -11
        14 | Hermenegildo    | 2023-06-27 15:00:00        |        -12
         6 | Eduardo Antonio | 2023-06-19 22:52:00        |         -4
         7 | Eduardo         | 2023-06-20 23:53:00        |         -5
         8 | Andres          | 2023-06-21 09:54:00        |         -6
        10 | Maria           | 2023-06-23 11:56:00        |         -8
        11 | Filomeno        | 2023-06-24 12:57:00        |         -9
        18 | Abril           | 2023-07-01 19:04:00        |        -16
        19 | Abril           | 2023-07-02 20:05:00        |        -17
        20 | Rosa            | 2023-07-03 21:06:00        |        -18
        21 | Federico        | 2023-06-14 20:27:30.57728  |          1
        22 | Jacinda         | 2023-06-14 21:04:00        |          1
        23 | Dan             | 2023-06-14 21:04:00        |          1
        24 | John            | 2023-06-14 21:04:00        |          1
        25 | Jessica         | 2023-06-14 21:04:00        |          1
        26 | Justin          | 2023-06-14 21:05:00        |          1
        27 | Stacey          | 2023-06-14 21:05:00        |          1
        28 | Reshorna        | 2023-06-14 21:05:00        |          1
        29 | Adar            | 2023-06-14 21:05:00        |          1
        30 | Dolly           | 2023-06-14 21:05:00        |          1
        31 | Mike            | 2023-06-14 21:06:00        |          1
        32 | Eduardo         | 2023-06-14 22:07:10.374049 |          1
        33 | Blanca          | 2023-06-14 22:12:55.121297 |          1
        34 | Ismael          | 2023-06-14 22:12:55.195944 |          1
        35 | Xi              | 2023-06-14 22:17:23.628817 |          1
        36 | Zhang           | 2023-06-14 22:17:43.400996 |          1
        37 | Eduardo         | 2023-06-14 22:48:36.405992 |          1
        38 | Miguel          | 2023-06-14 22:48:36.422681 |          1
(38 rows)

-- Sin embargo, como fecha_Alta esta en timestamp y tiene fechas posteriores, se corrige de la siguiente forma:

ALTER TABLE cliente ALTER COLUMN fecha_Alta TYPE DATE;
UPDATE cliente SET fecha_Alta='2010-05-31' WHERE idcliente=1;
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

walmart_2=> ALTER TABLE cliente ALTER COLUMN fecha_Alta TYPE DATE;
ALTER TABLE
walmart_2=> UPDATE cliente SET fecha_Alta='2010-05-31' WHERE idcliente=1;
UPDATE 1
--  ...

-- De modo que 

walmart_2=> SELECT idcliente, nombre, fecha_Alta, AGE(NOW()::DATE, fecha_Alta) AS Antiguedad FROM cliente;
 idcliente |     nombre      | fecha_alta |        antiguedad        
-----------+-----------------+------------+--------------------------
        37 | Eduardo         | 2023-06-14 | 1 day
        38 | Miguel          | 2023-06-14 | 1 day
         1 | Juan            | 2010-05-31 | 13 years 15 days
         2 | Andres          | 2008-01-15 | 15 years 5 mons
         3 | Alexander       | 2009-02-28 | 14 years 3 mons 15 days
         4 | Juan            | 2010-03-31 | 13 years 2 mons 15 days
         5 | Emanuel         | 2011-04-30 | 12 years 1 mon 15 days
         6 | Eduardo Antonio | 2012-05-31 | 11 years 15 days
         7 | Eduardo         | 2013-06-30 | 9 years 11 mons 15 days
         8 | Andres          | 2014-12-28 | 8 years 5 mons 18 days
         9 | Elio            | 2015-08-31 | 7 years 9 mons 15 days
        10 | Maria           | 2016-09-30 | 6 years 8 mons 15 days
        11 | Filomeno        | 2017-10-31 | 5 years 7 mons 15 days
        12 | Daniel          | 2018-11-30 | 4 years 6 mons 15 days
        13 | Guadalupe       | 2019-12-31 | 3 years 5 mons 15 days
        14 | Hermenegildo    | 2020-01-31 | 3 years 4 mons 15 days
        15 | Arnoldo Emanuel | 2021-02-28 | 2 years 3 mons 15 days
        16 | Juan Andres     | 2022-03-31 | 1 year 2 mons 15 days
        17 | Guadalupe       | 2023-04-30 | 1 mon 15 days
        18 | Abril           | 2008-05-31 | 15 years 15 days
        19 | Abril           | 2009-02-27 | 14 years 3 mons 16 days
        20 | Rosa            | 2010-07-31 | 12 years 10 mons 15 days
        21 | Federico        | 2011-08-31 | 11 years 9 mons 15 days
        22 | Jacinda         | 2012-09-30 | 10 years 8 mons 15 days
        23 | Dan             | 2013-10-31 | 9 years 7 mons 15 days
        24 | John            | 2014-11-30 | 8 years 6 mons 15 days
        25 | Jessica         | 2015-12-31 | 7 years 5 mons 15 days
        26 | Justin          | 2016-01-31 | 7 years 4 mons 15 days
        27 | Stacey          | 2017-02-28 | 6 years 3 mons 15 days
        28 | Reshorna        | 2018-03-31 | 5 years 2 mons 15 days
        29 | Adar            | 2019-04-30 | 4 years 1 mon 15 days
        30 | Dolly           | 2020-12-05 | 2 years 6 mons 10 days
        31 | Mike            | 2021-06-30 | 1 year 11 mons 15 days
        32 | Eduardo         | 2022-07-31 | 10 mons 15 days
        33 | Blanca          | 2023-08-31 | -2 mons -16 days
        34 | Ismael          | 2008-09-30 | 14 years 8 mons 15 days
        35 | Xi              | 2009-02-15 | 14 years 4 mons
        36 | Zhang           | 2010-11-30 | 12 years 6 mons 15 days
(38 rows)

-- Muestra en columnas separadas al año, mes, día de la fecha de alta de cada cliente, en donde cada columna tenga un nombre que referencie el contenido. 
SELECT idcliente, nombre, DATE_PART('year', fecha_Alta) AS Año, DATE_PART('month', fecha_Alta) AS Mes, DATE_PART('day', fecha_Alta) AS Dia FROM cliente;


walmart_2=> SELECT idcliente, nombre, DATE_PART('year', fecha_Alta) AS Año, DATE_PART('month', fecha_Alta) AS Mes, DATE_PART('day', fecha_Alta) AS Dia FROM cliente;
 idcliente |     nombre      | año  | mes | dia 
-----------+-----------------+------+-----+-----
        37 | Eduardo         | 2023 |   6 |  14
        38 | Miguel          | 2023 |   6 |  14
         1 | Juan            | 2010 |   5 |  31
         2 | Andres          | 2008 |   1 |  15
         3 | Alexander       | 2009 |   2 |  28
         4 | Juan            | 2010 |   3 |  31
         5 | Emanuel         | 2011 |   4 |  30
         6 | Eduardo Antonio | 2012 |   5 |  31
         7 | Eduardo         | 2013 |   6 |  30
         8 | Andres          | 2014 |  12 |  28
         9 | Elio            | 2015 |   8 |  31
        10 | Maria           | 2016 |   9 |  30
        11 | Filomeno        | 2017 |  10 |  31
        12 | Daniel          | 2018 |  11 |  30
        13 | Guadalupe       | 2019 |  12 |  31
        14 | Hermenegildo    | 2020 |   1 |  31
        15 | Arnoldo Emanuel | 2021 |   2 |  28
        16 | Juan Andres     | 2022 |   3 |  31
        17 | Guadalupe       | 2023 |   4 |  30
        18 | Abril           | 2008 |   5 |  31
        19 | Abril           | 2009 |   2 |  27
        20 | Rosa            | 2010 |   7 |  31
        21 | Federico        | 2011 |   8 |  31
        22 | Jacinda         | 2012 |   9 |  30
        23 | Dan             | 2013 |  10 |  31
        24 | John            | 2014 |  11 |  30
        25 | Jessica         | 2015 |  12 |  31
        26 | Justin          | 2016 |   1 |  31
        27 | Stacey          | 2017 |   2 |  28
        28 | Reshorna        | 2018 |   3 |  31
        29 | Adar            | 2019 |   4 |  30
        30 | Dolly           | 2020 |  12 |   5
        31 | Mike            | 2021 |   6 |  30
        32 | Eduardo         | 2022 |   7 |  31
        33 | Blanca          | 2023 |   8 |  31
        34 | Ismael          | 2008 |   9 |  30
        35 | Xi              | 2009 |   2 |  15
        36 | Zhang           | 2010 |  11 |  30
(38 rows)

-- Si el cliente compra algo hoy a mensualidades, ¿Cuándo serán los primeros 3 pagos? 
SELECT (NOW() + INTERVAL '1 month')::DATE AS Primer, (NOW() + INTERVAL '2 month')::DATE AS Segundo, (NOW() + INTERVAL '3 month')::DATE AS Tercer;

walmart_2=> SELECT (NOW() + INTERVAL '1 month')::DATE AS Primer, (NOW() + INTERVAL '2 month')::DATE AS Segundo, (NOW() + INTERVAL '3 month')::DATE AS Tercer;
   primer   |  segundo   |   tercer   
------------+------------+------------
 2023-07-15 | 2023-08-15 | 2023-09-15
(1 row)


-- Muestra " el día de hoy [11/03/2010] es [Saturday] ". Donde lo que está en corchete se obtenga por comando SQL y no por texto. 
SELECT 'El día de hoy ' || NOW()::DATE || ' es ' || TO_CHAR(NOW()::DATE, 'Day') AS DoW;

walmart_2=> SELECT 'El día de hoy ' || NOW()::DATE || ' es ' || TO_CHAR(NOW()::DATE, 'Day') AS DoW;
                  dow                  
---------------------------------------
 El día de hoy 2023-06-15 es Thursday 
(1 row)

-- Muestra " [Roberto Alvarado] se dio de alta el [sábado 11/03/2010] ". Donde lo que está en corchete se obtenga por comando SQL y no por texto.
SELECT nombre || 'se dio de alta el ' || TO_CHAR(NOW()::DATE, 'Day') || NOW()::DATE AS Alta FROM cliente WHERE idcliente = 25;

walmart_2=> SELECT nombre || 'se dio de alta el ' || TO_CHAR(NOW()::DATE, 'Day') || NOW()::DATE AS Alta FROM cliente WHERE idcliente = 25;
                     alta                      
-----------------------------------------------
 Jessica se dio de alta el Thursday 2023-06-15
(1 row)

-- Muestra a los Clientes que se dieron de Alta en el 2010. 
SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('year', fecha_Alta) = 2010;

walmart_2=> SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('year', fecha_Alta) = 2010;
 idcliente | nombre | fecha_alta 
-----------+--------+------------
         1 | Juan   | 2010-05-31
         4 | Juan   | 2010-03-31
        20 | Rosa   | 2010-07-31
        36 | Zhang  | 2010-11-30
(4 rows)

-- Muestra a los que dieron de alta en diciembre de cualquier año.
SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('month', fecha_Alta) = 12;

walmart_2=> SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('month', fecha_Alta) = 12;
 idcliente |  nombre   | fecha_alta 
-----------+-----------+------------
         8 | Andres    | 2014-12-28
        13 | Guadalupe | 2019-12-31
        25 | Jessica   | 2015-12-31
        30 | Dolly     | 2020-12-05
(4 rows)

-- Muestra a los que se dieron de Alta en febrero del 2009.
SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('year', fecha_Alta) = 2009 AND DATE_PART('month', fecha_Alta) = 02;

walmart_2=> SELECT idcliente, nombre, fecha_Alta FROM cliente WHERE DATE_PART('year', fecha_Alta) = 2009 AND DATE_PART('month', fecha_Alta) = 02;
 idcliente |  nombre   | fecha_alta 
-----------+-----------+------------
         3 | Alexander | 2009-02-28
        19 | Abril     | 2009-02-27
        35 | Xi        | 2009-02-15
(3 rows)

-- Muestra a los clientes que tienen menos de 6 meses que se dieron de alta 
SELECT idcliente, nombre, fecha_Alta, AGE(NOW()::DATE, fecha_Alta) FROM cliente WHERE AGE(NOW()::DATE, fecha_Alta) < INTERVAL '6 month';

walmart_2=> SELECT idcliente, nombre, fecha_Alta, AGE(NOW()::DATE, fecha_Alta) FROM cliente WHERE AGE(NOW()::DATE, fecha_Alta) < INTERVAL '6 month';
 idcliente |  nombre   | fecha_alta |       age        
-----------+-----------+------------+------------------
        37 | Eduardo   | 2023-06-14 | 1 day
        38 | Miguel    | 2023-06-14 | 1 day
        17 | Guadalupe | 2023-04-30 | 1 mon 15 days
        33 | Blanca    | 2023-08-31 | -2 mons -16 days
(4 rows)

-- Muestra a los clientes que tienen menos de 18 años.
SELECT idcliente, nombre, fecha_Nacimiento, AGE(NOW()::DATE, fecha_Nacimiento) FROM cliente WHERE AGE(NOW()::DATE, fecha_Nacimiento) < INTERVAL '18 year';

-- Actualizando al cliente 38
UPDATE cliente SET fecha_Nacimiento = '2010-11-19' WHERE idcliente = 38;

walmart_2=> UPDATE cliente SET fecha_Nacimiento = '2010-11-19' WHERE idcliente = 38;
UPDATE 1
walmart_2=> SELECT idcliente, nombre, fecha_Nacimiento, AGE(NOW()::DATE, fecha_Nacimiento) FROM cliente WHERE AGE(NOW()::DATE, fecha_Nacimiento) < INTERVAL '18 year';
 idcliente | nombre | fecha_nacimiento |           age           
-----------+--------+------------------+-------------------------
        38 | Miguel | 2010-11-19       | 12 years 6 mons 26 days
(1 row)

-- Muestra a los Clientes que hoy cumplen años. 
SELECT idcliente, nombre, fecha_Nacimiento FROM cliente WHERE DATE_PART('month', fecha_Nacimiento) = DATE_PART('month', NOW()::DATE) AND DATE_PART('day', fecha_Nacimiento) = DATE_PART('day', NOW()::DATE);

SELECT idcliente, nombre, fecha_Nacimiento FROM cliente WHERE DATE_PART('month', fecha_Nacimiento) = 11 AND DATE_PART('day', fecha_Nacimiento) = 19;

-- Como nadie cumple años el 15/06, se actualiza al cliente 38:
UPDATE cliente SET fecha_Nacimiento = '2010-06-15' WHERE idcliente = 38;

walmart_2=> UPDATE cliente SET fecha_Nacimiento = '2010-06-15' WHERE idcliente = 38;
UPDATE 1
walmart_2=> SELECT idcliente, nombre, fecha_Nacimiento FROM cliente WHERE DATE_PART('month', fecha_Nacimiento) = DATE_PART('month', NOW()::DATE) AND DATE_PART('day', fecha_Nacimiento) = DATE_PART('day', NOW()::DATE);
 idcliente | nombre | fecha_nacimiento 
-----------+--------+------------------
        38 | Miguel | 2010-06-15
(1 row)


-- Muestra a los clientes que cumplen años Enero Febrero, Marzo o Abril. 
SELECT idcliente, nombre, fecha_Nacimiento FROM cliente WHERE DATE_PART('month', fecha_Nacimiento) IN (1,2,3,4);

walmart_2=> SELECT idcliente, nombre, fecha_Nacimiento FROM cliente WHERE DATE_PART('month', fecha_Nacimiento) IN (1,2,3,4);
 idcliente |  nombre   | fecha_nacimiento 
-----------+-----------+------------------
         7 | Eduardo   | 2003-01-17
         8 | Andres    | 2004-02-18
         9 | Elio      | 2005-03-19
        10 | Maria     | 1970-04-20
        19 | Abril     | 1979-01-29
        20 | Rosa      | 1980-02-28
        23 | Dan       | 1958-01-01
        24 | John      | 1960-01-01
        25 | Jessica   | 1972-01-01
        26 | Justin    | 1956-01-06
        28 | Reshorna  | 1970-01-01
        29 | Adar      | 1981-01-14
        30 | Dolly     | 1946-01-19
        31 | Mike      | 1970-01-01
        32 | Eduardo   | 1971-02-14
(15 rows)
