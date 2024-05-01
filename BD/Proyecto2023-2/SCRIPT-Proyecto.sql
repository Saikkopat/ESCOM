-- Condiciones:
-- Las tablas deberán estar por lo menos en 3FN.
-- Prohibido usar disparadores para la validación de restricciones que se puedan implementar directamente en el diseño. 
-- Los equipos deberán ser de tres personas, por lo que deberá haber solamente 11 o 12 equipos. En caso de no tener equipo o no completar su equipo el día 11 de mayo se revisara.
-- Su documento deberá tener además de una caratula e índice, las siguientes secciones:
-- Problema (el problema a tratar por equipo se les dará el día 11 de Mayo). En esta parte va la narrativa del problema.

-- Diagrama ER/EER . Aquí va el diagrama ER/EER, si es muy grande, podrían poner solo las entidades (solo con llaves primarias y foráneas) y sus respectivas relaciones y mas adelante en la descripción de las tablas ponen el diagrama de la entidad con sus atributos completos. O usar conectares para hacer el diagrama completo continuando en otras paginas. (Deberán tener un diagrama ER/EER inicial en donde localizaron las relaciones, atributos y entidades y el final ya normalizado).

-- Esquema Relacional, especificando llaves primarias, alternativas y foráneas. De estas últimas, los modos de borrado y modificación. Indicando mediante un * aquellos campos que acepten valores nulos y defina las restricciones que deben tener los campos para conservar la integridad de la BD.

-- Descripción de las tablas (Diccionario de Datos) En esta sección deberán describir cada una de las tablas, atributos y objetivo tanto de la tabla como de los campos. Por lo cual se compone de las siguientes secciones
-- A) Objetivo de la tabla
-- B) descripción de los atributos y sus restricciones/validaciones. Utilizar el formato dado en clase.
-- C) Descripción de los procedimientos almacenados y disparadores necesarios para mantener la integridad de la tabla
-- D) Creación de la tabla mediante código SQL

-- Consultas SQL. En esta sección pondrán las consultas que les pida sobre su base de datos
-- NOTA: Para la entrega, esta deberá ser el documento, script de su base de datos.

x
-- Proyecto: Equipo # - Clínica Odontólogica

-- Una nueva clínica abre sus instalaciones con la problemática de que necesita un sistema que le ayude a administrar desde sus tratamientos hasta los diversos pacientes que atiende. Para ello la clínica busca almacenar toda la información referente a los diversos pacientes que atenderá. Para ello el sistema guardará cada paciente con su nombre compuesto de nombre, apellido paterno y materno, la dirección dada por calle, número, colonia y el código postal, su fecha de nacimiento por la cual el sistema deberá calcular la edad.

-- Este paciente podrá solicitar vía telefónica una consulta por lo que se le proporcionará la fecha de consulta y el número de su consulta. Cabe aclarar que este número de consulta ayudará a saber cual fue la consulta en el tiempo de vida de la clínica y no en el día. Cada consulta es brindada por un odontólogo, el cual el administrador registrará su nombre completo dividido en su nombre y apellidos, así como la especialidad en el área que tiene, es por ello por lo que dentro de la clínica se le dará automáticamente un número de trabajador.

-- Durante cada consulta en la cual este el odontólogo, se realizarán diversos tratamientos los cuales tienen un precio. Estos tratamientos recibirán un nombre clave ya que son distintos para cada consulta por lo que el sistema deberá de almacenar los tratamientos mediante una fecha de inicio del tratamiento y el odontólogo podrá seleccionar la opción de terminado en caso de que el tratamiento haya finalizado, lo que arrojará la fecha de fin.

-- Debido a que esta clínica ya tenía una sucursal cercana y se planea abrir una tercera clínica, el sistema guardará el local desde donde el odontólogo trabaja apoyándose que cada local le demos un nombre característico, así como la calle, el número y la ciudad. Por parte del odontólogo, el sistema deberá registrar el día en que fue a laborar en ese local, el horario de inicio y de fin en el que se retiró del local. Esto también aplica para cuando tenga que asistir a dicho local por caso de emergencia.

-- Por último, debido a que cada clínica estará conectada al sistema del local en donde se encuentre, se debe tener un registro que pueda existir más de un consultorio en cada local por lo que necesitaremos saber en todo momento con cuantos consultorios cuenta esa clínica, así como el equipo que posee. Durante la realización de cada inventario, cada equipo se registra por su número de serie, el tipo de equipo y la última fecha en la que se le dió mantenimiento.



-- Entidades: 

Pacientes {nombre: nombre, apellido paterno, apellido materno; direccion: calle, número, colonia, código postal; fecha de nacimiento, edad}
Consulta {numero de consulta, fecha} + #paciente, #empleado, #sucursal, #consultorio, #tratamiento
Odontólogo {numero de trabajador, nombre: nombre, apellidos; especialidad}
Tratamiento {codigo, nombre, fecha de inicio, fecha de termino}

Sucursal {numero de sucursal, nombre, direccion: calle, numero, ciudad, capacidad consultorios}
Consultorio {numero de consultorio}
Equipo {numero de serie, tipo de equipo, fecha de ultimo mantenimiento}

Relaciones:
Turno {numero turno, hora de inicio, hora de fin} + numero empleado, #sucursal, #consultorio
Emergencia {numero emergencia, fecha} + numero empleado, #sucursal, #consultorio
Inventario {numero de inventariado, fecha} + #sucursal, #serie


Entidades

Paciente (id_paciente, 
	nombre_completo: {nombres, apellido_paterno, apellido_materno}, 
	direccion_paciente: {calle, numero, colonia, codigo_postal}, 
	fecha_nacimiento, edad,
	telefono)

Consulta (id_consulta, 
	fecha_consulta)

Odontologo (id_empleado, 
	nombre_completo: {nombres, apellido_paterno, apellido_materno}, 
	especialidad)

Tratamiento (id_tratamiento, 
	nombre_clave, 
	precio)

Sucursal (id_sucursal, 
	nombre_sucursal, 
	direccion_sucursal: {calle_sucursal, numero_sucursal, ciudad_sucursal})

Consultorio (id_consultorio)

Equipo (numero_serie, 
	tipo_equipo, 
	fecha_mantenimiento)


Relaciones:
Paciente - Consulta (1:N) 
Consulta - Odontologo (N:1)
Consulta - Tratamiento (1:N) FK: id_consulta, id_tratamiento; fecha_inicio, fecha_fin, estatus
Turno: Odontologo - Sucursal (N:M) (id_turno, inicio, fin) FK: id_empleado, id_sucursal, id_consultorio
Sucursal - Consultorio (1:N)
Consultorio - Equipo (1:N)

Tratamiento - Odontologo (N:1)


ER:
https://drive.google.com/file/d/160HFOM-stq8OS3d4FEnbkVOzuG0vb_U0/view?usp=sharing

ERE:
https://drive.google.com/file/d/1nIDlWL5ss6a1PTDJQh0IeWctOiQF1lFm/view?usp=sharing



ER

Paso 1 Entidades fuertes: 

Paciente (id_paciente, nombres, apellido_paterno, apellido_materno, fecha_nacimiento, edad, telefono, calle, numero, colonia, codigo_postal)

Odontologo (id_empleado, nombres, apellido_paterno, apellido_materno, especialidad)

Sucursal (id_sucursal, nombre_sucursal, capacidad, calle, numero, colonia, codigo_postal, ciudad)

Contacto (id_contacto, telefono, fecha)

Tratamiento (id_tratamiento, nombre_clave, precio)

Equipo (numero_serie, descripcion, fecha_mantenimiento)



Paso 2 Entidades debiles:

Consulta (id_consulta, fecha_consulta, id_paciente, id_empleado, id_tratamiento, id_contacto)

Consultorio (id_consultorio, tipo, id_sucursal)



Paso 3 R. Cardinalidad 1:1:

Contacto - Paciente (id_contacto, id_paciente)

Odontologo - Consultorio (id_consultorio, id_empleado)

Contacto - Consulta programada (id_contacto, id_consulta)




Paso 4 R. Cardinalidad 1:N:

Paciente - Consulta (id_consulta, id_paciente)



{
    "Paciente": {
        "id_paciente": "INT PRIMARY KEY AUTO_INCREMENT",
        "nombre_paciente": "VARCHAR(50) NOT NULL",
        "apellido_paterno": "VARCHAR(50) NOT NULL",
        "apellido_materno": "VARCHAR(50) NOT NULL",
        "fecha_nacimiento": "DATE NOT NULL",
        "edad": "INT NOT NULL"
    },
    "direc_paciente": {
        "calle": "VARCHAR(100) NOT NULL",
        "numero": "INT NOT NULL",
        "colonia": "VARCHAR(100) NOT NULL",
        "codigo_postal": "INT NOT NULL",
        "id_paciente": "INT NOT NULL, FOREIGN KEY REFERENCES Paciente(id_paciente)"
    },
    "Odontologo": {
        "id_odontologo": "INT PRIMARY KEY AUTO_INCREMENT",
        "nombre": "VARCHAR(50) NOT NULL",
        "apellido_paterno": "VARCHAR(50) NOT NULL",
        "apellido_materno": "VARCHAR(50) NOT NULL",
        "especialidad": "VARCHAR(100) NOT NULL",
        "numero_trabajador": "INT NOT NULL",
        "id_consultorio": "INT NOT NULL, FOREIGN KEY REFERENCES Consultorio(id_consultorio)"
    },
    "Consulta": {
        "id_consulta": "INT PRIMARY KEY AUTO_INCREMENT",
        "fecha_consulta": "DATE NOT NULL",
        "numero_consulta": "INT NOT NULL",
        "id_paciente": "<EUGPSCoordinates>FOREIGN KEY REFERENCES Paciente(id_paciente)",
        "<EUGPSCoordinates>FOREIGN KEY REFERENCES Odontologo(id_odontologo)"
    },


	\item \texttt{fecha\_inicio} fecha, \emph{no nulo}
	\item \texttt{fecha\_fin} fecha, \emph{no nulo}
	\item \texttt{estatus} booleano, \emph{no nulo}
	\item \textt{id\_paciente} \textbf{Llave foránea}
	\item \textt{id\_consulta} \textbf{Llave foránea}
	\item \item \textt{numero\_empleado} \textbf{Llave foránea}