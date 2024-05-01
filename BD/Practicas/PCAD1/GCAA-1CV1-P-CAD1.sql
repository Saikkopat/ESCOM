
-- PRACTICA FECHAS, González Cárdenas Ángel Aquilez, 1CV1

-- INSTRUCCIONES:
-- Generar las siguientes consultas en código SQL y envié la evidencia de su sentencia y el resultado. En caso que el resultado no envié resultado, ingrese un registro que aplique a la condición. Utilice consultas con valores nulos. Envié también el script de las consultas.

-- Muestra los primeros tres caracteres del nombre. 
SELECT idcliente, nombre, SUBSTRING(nombre, 1,3) FROM cliente;
SELECT idcliente, nombre, LEFT(nombre, 3) FROM cliente;

walmart_2=> SELECT idcliente, nombre, SUBSTRING(nombre, 1,3) FROM cliente;
 idcliente |     nombre      | substring 
-----------+-----------------+-----------
        37 | Eduardo         | Edu
         1 | Juan            | Jua
         2 | Andres          | And
         3 | Alexander       | Ale
         4 | Juan            | Jua
         5 | Emanuel         | Ema
         6 | Eduardo Antonio | Edu
         7 | Eduardo         | Edu
         8 | Andres          | And
         9 | Elio            | Eli
        10 | Maria           | Mar
        11 | Filomeno        | Fil
        12 | Daniel          | Dan
        13 | Guadalupe       | Gua
        14 | Hermenegildo    | Her
        15 | Arnoldo Emanuel | Arn
        16 | Juan Andres     | Jua
        17 | Guadalupe       | Gua
        18 | Abril           | Abr
        19 | Abril           | Abr
        20 | Rosa            | Ros
        21 | Federico        | Fed
        22 | Jacinda         | Jac
        23 | Dan             | Dan
        24 | John            | Joh
        25 | Jessica         | Jes
        26 | Justin          | Jus
        27 | Stacey          | Sta
        28 | Reshorna        | Res
        29 | Adar            | Ada
        30 | Dolly           | Dol
        31 | Mike            | Mik
        32 | Eduardo         | Edu
        33 | Blanca          | Bla
        34 | Ismael          | Ism
        35 | Xi              | Xi
        36 | Zhang           | Zha
        38 | Miguel          | Mig
(38 rows)

-- Muestra los últimos 3 caracteres del nombre.
SELECT idcliente, nombre, RIGHT(nombre, 3) FROM cliente;

walmart_2=> SELECT idcliente, nombre, RIGHT(nombre, 3) FROM cliente;
 idcliente |     nombre      | right 
-----------+-----------------+-------
        37 | Eduardo         | rdo
         1 | Juan            | uan
         2 | Andres          | res
         3 | Alexander       | der
         4 | Juan            | uan
         5 | Emanuel         | uel
         6 | Eduardo Antonio | nio
         7 | Eduardo         | rdo
         8 | Andres          | res
         9 | Elio            | lio
        10 | Maria           | ria
        11 | Filomeno        | eno
        12 | Daniel          | iel
        13 | Guadalupe       | upe
        14 | Hermenegildo    | ldo
        15 | Arnoldo Emanuel | uel
        16 | Juan Andres     | res
        17 | Guadalupe       | upe
        18 | Abril           | ril
        19 | Abril           | ril
        20 | Rosa            | osa
        21 | Federico        | ico
        22 | Jacinda         | da 
        23 | Dan             | an 
        24 | John            | hn 
        25 | Jessica         | ca 
        26 | Justin          | in 
        27 | Stacey          | ey 
        28 | Reshorna        | na 
        29 | Adar            | ar 
        30 | Dolly           | ly 
        31 | Mike            | ke 
        32 | Eduardo         | rdo
        33 | Blanca          | nca
        34 | Ismael          | ael
        35 | Xi              | Xi
        36 | Zhang           | ang
        38 | Miguel          | uel
(38 rows)

-- Muestra del 2do al 5to carácter del nombre. 
SELECT idcliente, nombre, SUBSTRING(nombre, 2,5) FROM cliente;

walmart_2=> SELECT idcliente, nombre, SUBSTRING(nombre, 2,5) FROM cliente;
 idcliente |     nombre      | substring 
-----------+-----------------+-----------
        37 | Eduardo         | duard
         1 | Juan            | uan
         2 | Andres          | ndres
         3 | Alexander       | lexan
         4 | Juan            | uan
         5 | Emanuel         | manue
         6 | Eduardo Antonio | duard
         7 | Eduardo         | duard
         8 | Andres          | ndres
         9 | Elio            | lio
        10 | Maria           | aria
        11 | Filomeno        | ilome
        12 | Daniel          | aniel
        13 | Guadalupe       | uadal
        14 | Hermenegildo    | ermen
        15 | Arnoldo Emanuel | rnold
        16 | Juan Andres     | uan A
        17 | Guadalupe       | uadal
        18 | Abril           | bril
        19 | Abril           | bril
        20 | Rosa            | osa
        21 | Federico        | ederi
        22 | Jacinda         | acind
        23 | Dan             | an 
        24 | John            | ohn 
        25 | Jessica         | essic
        26 | Justin          | ustin
        27 | Stacey          | tacey
        28 | Reshorna        | eshor
        29 | Adar            | dar 
        30 | Dolly           | olly 
        31 | Mike            | ike 
        32 | Eduardo         | duard
        33 | Blanca          | lanca
        34 | Ismael          | smael
        35 | Xi              | i
        36 | Zhang           | hang
        38 | Miguel          | iguel
(38 rows)


-- Reemplaza las d por s en nombre. 
SELECT idcliente, nombre, REPLACE(nombre, 'd','s') FROM cliente;

walmart_2=> SELECT idcliente, nombre, REPLACE(nombre, 'd','s') FROM cliente;
 idcliente |     nombre      |     replace     
-----------+-----------------+-----------------
        37 | Eduardo         | Esuarso
         1 | Juan            | Juan
         2 | Andres          | Ansres
         3 | Alexander       | Alexanser
         4 | Juan            | Juan
         5 | Emanuel         | Emanuel
         6 | Eduardo Antonio | Esuarso Antonio
         7 | Eduardo         | Esuarso
         8 | Andres          | Ansres
         9 | Elio            | Elio
        10 | Maria           | Maria
        11 | Filomeno        | Filomeno
        12 | Daniel          | Daniel
        13 | Guadalupe       | Guasalupe
        14 | Hermenegildo    | Hermenegilso
        15 | Arnoldo Emanuel | Arnolso Emanuel
        16 | Juan Andres     | Juan Ansres
        17 | Guadalupe       | Guasalupe
        18 | Abril           | Abril
        19 | Abril           | Abril
        20 | Rosa            | Rosa
        21 | Federico        | Feserico
        22 | Jacinda         | Jacinsa 
        23 | Dan             | Dan 
        24 | John            | John 
        25 | Jessica         | Jessica 
        26 | Justin          | Justin 
        27 | Stacey          | Stacey 
        28 | Reshorna        | Reshorna 
        29 | Adar            | Asar 
        30 | Dolly           | Dolly 
        31 | Mike            | Mike 
        32 | Eduardo         | Esuarso
        33 | Blanca          | Blanca
        34 | Ismael          | Ismael
        35 | Xi              | Xi
        36 | Zhang           | Zhang
        38 | Miguel          | Miguel
(38 rows)

-- Obtén la longitud del apellido paterno.
SELECT idcliente, primerapellido, LENGTH(primerapellido) FROM cliente;

walmart_2=> SELECT idcliente, primerapellido, LENGTH(primerapellido) FROM cliente;
 idcliente | primerapellido | length 
-----------+----------------+--------
        37 | Blanco         |      6
         1 | Perez          |      5
         2 | Galicia        |      7
         3 | Perdomo        |      7
         4 | Hernandez      |      9
         5 | Reyes          |      5
         6 | Hernandez      |      9
         7 | Acosta         |      6
         8 | Garcia         |      6
         9 | Pez            |      3
        10 | Cardona        |      7
        11 | Guevara        |      7
        12 | Valencia       |      8
        13 | Ambriz         |      6
        14 | Perez          |      5
        15 | Echegaray      |      9
        16 | Alvarado       |      8
        17 | Alvarado       |      8
        18 | Govea          |      5
        19 | Perez          |      5
        20 | Mercacho       |      8
        21 | Buenrostro     |     10
        22 | Ardern         |      7
        23 | Schulman       |      9
        24 | Nkengasong     |     11
        25 | Tan            |      4
        26 | Welby          |      6
        27 | Abrams         |      7
        28 | Fitzpatrick    |     12
        29 | Poonawalla     |     11
        30 | Parton         |      7
        31 | Sommers        |      8
        32 | Martinez       |      8
        33 | Silvia         |      6
        34 | Rodriguez      |      9
        35 | Paz            |      3
        36 |                |       
        38 | Blanco         |      6
(38 rows)

--- Nota: 36 no tiene apellido paterno.

-- Muestra en mayúsculas el nombre. 
SELECT idcliente, nombre, UPPER(nombre) FROM cliente;

walmart_2=> SELECT idcliente, nombre, UPPER(nombre) FROM cliente;
 idcliente |     nombre      |      upper      
-----------+-----------------+-----------------
        37 | Eduardo         | EDUARDO
         1 | Juan            | JUAN
         2 | Andres          | ANDRES
         3 | Alexander       | ALEXANDER
         4 | Juan            | JUAN
         5 | Emanuel         | EMANUEL
         6 | Eduardo Antonio | EDUARDO ANTONIO
         7 | Eduardo         | EDUARDO
         8 | Andres          | ANDRES
         9 | Elio            | ELIO
        10 | Maria           | MARIA
        11 | Filomeno        | FILOMENO
        12 | Daniel          | DANIEL
        13 | Guadalupe       | GUADALUPE
        14 | Hermenegildo    | HERMENEGILDO
        15 | Arnoldo Emanuel | ARNOLDO EMANUEL
        16 | Juan Andres     | JUAN ANDRES
        17 | Guadalupe       | GUADALUPE
        18 | Abril           | ABRIL
        19 | Abril           | ABRIL
        20 | Rosa            | ROSA
        21 | Federico        | FEDERICO
        22 | Jacinda         | JACINDA 
        23 | Dan             | DAN 
        24 | John            | JOHN 
        25 | Jessica         | JESSICA 
        26 | Justin          | JUSTIN 
        27 | Stacey          | STACEY 
        28 | Reshorna        | RESHORNA 
        29 | Adar            | ADAR 
        30 | Dolly           | DOLLY 
        31 | Mike            | MIKE 
        32 | Eduardo         | EDUARDO
        33 | Blanca          | BLANCA
        34 | Ismael          | ISMAEL
        35 | Xi              | XI
        36 | Zhang           | ZHANG
        38 | Miguel          | MIGUEL
(38 rows)

-- Muestra en minúsculas el apellido paterno.
SELECT idcliente, nombre, LOWER(primerapellido) FROM cliente;

walmart_2=> SELECT idcliente, nombre, LOWER(primerapellido) FROM cliente;
 idcliente |     nombre      |    lower     
-----------+-----------------+--------------
        37 | Eduardo         | blanco
         1 | Juan            | perez
         2 | Andres          | galicia
         3 | Alexander       | perdomo
         4 | Juan            | hernandez
         5 | Emanuel         | reyes
         6 | Eduardo Antonio | hernandez
         7 | Eduardo         | acosta
         8 | Andres          | garcia
         9 | Elio            | pez
        10 | Maria           | cardona
        11 | Filomeno        | guevara
        12 | Daniel          | valencia
        13 | Guadalupe       | ambriz
        14 | Hermenegildo    | perez
        15 | Arnoldo Emanuel | echegaray
        16 | Juan Andres     | alvarado
        17 | Guadalupe       | alvarado
        18 | Abril           | govea
        19 | Abril           | perez
        20 | Rosa            | mercacho
        21 | Federico        | buenrostro
        22 | Jacinda         | ardern 
        23 | Dan             | schulman 
        24 | John            | nkengasong 
        25 | Jessica         | tan 
        26 | Justin          | welby 
        27 | Stacey          | abrams 
        28 | Reshorna        | fitzpatrick 
        29 | Adar            | poonawalla 
        30 | Dolly           | parton 
        31 | Mike            | sommers 
        32 | Eduardo         | martinez
        33 | Blanca          | silvia
        34 | Ismael          | rodriguez
        35 | Xi              | paz
        36 | Zhang           | 
        38 | Miguel          | blanco
(38 rows)

-- Muestra a los clientes con su delegación, reemplazando Benito Juárez por B. Juárez.
SELECT idcliente, nombre, direccion_delegacion, REPLACE(direccion_delegacion,'Benito','B.') FROM cliente;

walmart_2=> SELECT idcliente, nombre, direccion_delegacion, REPLACE(direccion_delegacion,'Benito','B.') FROM cliente;
 idcliente |     nombre      | direccion_delegacion |       replace       
-----------+-----------------+----------------------+---------------------
        37 | Eduardo         | Coyoacan             | Coyoacan
         1 | Juan            | Gustavo A. Madero    | Gustavo A. Madero
         2 | Andres          | Tlalnepantla         | Tlalnepantla
         3 | Alexander       | Nezahualcoyotl       | Nezahualcoyotl
         5 | Emanuel         | Iztacalco            | Iztacalco
         6 | Eduardo Antonio | Iztacalco            | Iztacalco
         7 | Eduardo         | Iztacalco            | Iztacalco
         8 | Andres          | Iztapalapa           | Iztapalapa
         9 | Elio            | Nezahualcoyotl       | Nezahualcoyotl
        10 | Maria           | Iztacalco            | Iztacalco
        11 | Filomeno        | Milpa Alta           | Milpa Alta
        12 | Daniel          | Tlalneplantla        | Tlalneplantla
        13 | Guadalupe       | Emiliano Zapata      | Emiliano Zapata
        14 | Hermenegildo    | Izucar de Matamoros  | Izucar de Matamoros
        15 | Arnoldo Emanuel | Cuauhtemoc           | Cuauhtemoc
        16 | Juan Andres     | Milpa Alta           | Milpa Alta
        17 | Guadalupe       | Magdalena Contreras  | Magdalena Contreras
        18 | Abril           | GAM                  | GAM
        19 | Abril           | Gustavo A Madero     | Gustavo A Madero
        20 | Rosa            | Coyoacan             | Coyoacan
        21 | Federico        | Coyoacan             | Coyoacan
        22 | Jacinda         |                      | 
        23 | Dan             |                      | 
        24 | John            |                      | 
        25 | Jessica         |                      | 
        26 | Justin          |                      | 
        27 | Stacey          |                      | 
        28 | Reshorna        |                      | 
        29 | Adar            |                      | 
        30 | Dolly           |                      | 
        31 | Mike            |                      | 
        32 | Eduardo         |                      | 
        33 | Blanca          |                      | 
        34 | Ismael          |                      | 
        35 | Xi              |                      | 
        36 | Zhang           |                      | 
        38 | Miguel          | Benito Juarez        | B. Juarez
         4 | Juan            | Nezahualcoyotl       | Nezahualcoyotl
(38 rows)

-- Muestra el nombre completo empezando por el apellido paterno con mayúsculas en una sola columna. 
SELECT idcliente, CONCAT(UPPER(primerapellido),' ',segundoapellido,' ',nombre) AS "Nombre completo" FROM cliente;

walmart_2=> SELECT idcliente, CONCAT(UPPER(primerapellido),' ',segundoapellido,' ',nombre) AS "Nombre completo" FROM cliente;
 idcliente |         Nombre completo          
-----------+----------------------------------
        37 | BLANCO  Eduardo
         1 | PEREZ Lopez Juan
         2 | GALICIA Juarez Andres
         3 | PERDOMO Andrade Alexander
         5 | REYES Galaviz Emanuel
         6 | HERNANDEZ Juarez Eduardo Antonio
         7 | ACOSTA Nuñez Eduardo
         8 | GARCIA Rodriguez Andres
         9 | PEZ Prado Elio
        10 | CARDONA Velez Maria
        11 | GUEVARA Monroy Filomeno
        12 | VALENCIA Herrera Daniel
        13 | AMBRIZ Garcia Guadalupe
        14 | PEREZ Asuncion Hermenegildo
        15 | ECHEGARAY Robles Arnoldo Emanuel
        16 | ALVARADO Garcia Juan Andres
        17 | ALVARADO Nisman Guadalupe
        18 | GOVEA Fernandez Abril
        19 | PEREZ Ramirez Abril
        20 | MERCACHO Rosales Rosa
        21 | BUENROSTRO Buenabarra Federico
        22 | ARDERN   Jacinda 
        23 | SCHULMAN   Dan 
        24 | NKENGASONG   John 
        25 | TAN   Jessica 
        26 | WELBY   Justin 
        27 | ABRAMS   Stacey 
        28 | FITZPATRICK   Reshorna 
        29 | POONAWALLA   Adar 
        30 | PARTON   Dolly 
        31 | SOMMERS   Mike 
        32 | MARTINEZ  Eduardo
        33 | SILVIA  Blanca
        34 | RODRIGUEZ  Ismael
        35 | PAZ  Xi
        36 |  Paz Zhang
        38 | BLANCO Blanco Miguel
         4 | HERNANDEZ Lopez Juan
(38 rows)

-- Muestra el nombre de los clientes con las E reemplazadas con el número 3.
SELECT idcliente, nombre, REPLACE(nombre, 'E', '3') FROM cliente;

walmart_2=> SELECT idcliente, nombre, REPLACE(nombre, 'E', '3') FROM cliente;
 idcliente |     nombre      |     replace     
-----------+-----------------+-----------------
        37 | Eduardo         | 3duardo
         1 | Juan            | Juan
         2 | Andres          | Andres
         3 | Alexander       | Alexander
         5 | Emanuel         | 3manuel
         6 | Eduardo Antonio | 3duardo Antonio
         7 | Eduardo         | 3duardo
         8 | Andres          | Andres
         9 | Elio            | 3lio
        10 | Maria           | Maria
        11 | Filomeno        | Filomeno
        12 | Daniel          | Daniel
        13 | Guadalupe       | Guadalupe
        14 | Hermenegildo    | Hermenegildo
        15 | Arnoldo Emanuel | Arnoldo 3manuel
        16 | Juan Andres     | Juan Andres
        17 | Guadalupe       | Guadalupe
        18 | Abril           | Abril
        19 | Abril           | Abril
        20 | Rosa            | Rosa
        21 | Federico        | Federico
        22 | Jacinda         | Jacinda 
        23 | Dan             | Dan 
        24 | John            | John 
        25 | Jessica         | Jessica 
        26 | Justin          | Justin 
        27 | Stacey          | Stacey 
        28 | Reshorna        | Reshorna 
        29 | Adar            | Adar 
        30 | Dolly           | Dolly 
        31 | Mike            | Mike 
        32 | Eduardo         | 3duardo
        33 | Blanca          | Blanca
        34 | Ismael          | Ismael
        35 | Xi              | Xi
        36 | Zhang           | Zhang
        38 | Miguel          | Miguel
         4 | Juan            | Juan
(38 rows)


-- Muestra el nombre completo de los clientes con las o reemplazados con el número 0 en una sola columna. 
SELECT idcliente, REPLACE(CONCAT(UPPER(primerapellido),' ',segundoapellido,' ',nombre), 'o', '0') AS "Nombre completo" FROM cliente;

walmart_2=> SELECT idcliente, REPLACE(CONCAT(UPPER(primerapellido),' ',segundoapellido,' ',nombre), 'o', '0') AS "Nombre completo" FROM cliente;
 idcliente |         Nombre completo          
-----------+----------------------------------
        37 | BLANCO  Eduard0
         1 | PEREZ L0pez Juan
         2 | GALICIA Juarez Andres
         3 | PERDOMO Andrade Alexander
         5 | REYES Galaviz Emanuel
         6 | HERNANDEZ Juarez Eduard0 Ant0ni0
         7 | ACOSTA Nuñez Eduard0
         8 | GARCIA R0driguez Andres
         9 | PEZ Prad0 Eli0
        10 | CARDONA Velez Maria
        11 | GUEVARA M0nr0y Fil0men0
        12 | VALENCIA Herrera Daniel
        13 | AMBRIZ Garcia Guadalupe
        14 | PEREZ Asunci0n Hermenegild0
        15 | ECHEGARAY R0bles Arn0ld0 Emanuel
        16 | ALVARADO Garcia Juan Andres
        17 | ALVARADO Nisman Guadalupe
        18 | GOVEA Fernandez Abril
        19 | PEREZ Ramirez Abril
        20 | MERCACHO R0sales R0sa
        21 | BUENROSTRO Buenabarra Federic0
        22 | ARDERN   Jacinda 
        23 | SCHULMAN   Dan 
        24 | NKENGASONG   J0hn 
        25 | TAN   Jessica 
        26 | WELBY   Justin 
        27 | ABRAMS   Stacey 
        28 | FITZPATRICK   Resh0rna 
        29 | POONAWALLA   Adar 
        30 | PARTON   D0lly 
        31 | SOMMERS   Mike 
        32 | MARTINEZ  Eduard0
        33 | SILVIA  Blanca
        34 | RODRIGUEZ  Ismael
        35 | PAZ  Xi
        36 |  Paz Zhang
        38 | BLANCO Blanc0 Miguel
         4 | HERNANDEZ L0pez Juan
(38 rows)
