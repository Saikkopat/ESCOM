CREATE SCHEMA IF NOT EXISTS `clinicaOdontologica` DEFAULT CHARACTER SET utf8 ;
USE `clinicaOdontologica` ;

-- Proyecto final 3CV1 -- Clínica Odontológica
-- Fecha de conclusión 27/06/2023

-- Integrantes --
-- Aguilar Ibarra José Moisés -- Boleta: 2022630329
-- González Cárdenas Ángel Aquilez -- Boleta: 2016630152
-- Pérez Olivares José Julio -- 2022630070


-- Creación de la tabla Paciente
CREATE TABLE if not exists Paciente (
  id_paciente INT PRIMARY KEY AUTO_INCREMENT,
  nombre_paciente VARCHAR(50) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  edad INT NOT NULL
);

-- Creación de la tabla direc_paciente
CREATE TABLE if not exists direc_paciente (
  calle VARCHAR(100) NOT NULL,
  numero INT NOT NULL,
  colonia VARCHAR(100) NOT NULL,
  codigo_postal INT NOT NULL,
  id_paciente INT NOT NULL,
  FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);

-- Creación de la tabla Odontologo
CREATE TABLE if not exists Odontologo (
  id_odontologo INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50) NOT NULL,
  especialidad VARCHAR(100) NOT NULL,
  numero_trabajador INT NOT NULL,
  id_consultorio INT NOT NULL
);
-- Llave foranea para tabla de Odontologo
ALTER TABLE Odontologo ADD FOREIGN KEY (id_consultorio) REFERENCES consultorio(id_consultorio);

-- Sentencia para modificar la columna y que se puedan aceptar valores nulos
ALTER TABLE Odontologo MODIFY id_consultorio INT; 

-- Creación de la tabla Consulta
CREATE TABLE if not exists Consulta (
  id_consulta INT PRIMARY KEY AUTO_INCREMENT,
  fecha_consulta DATE NOT NULL,
  numero_consulta INT NOT NULL,
  id_paciente INT NOT NULL,
  id_odontologo INT NOT NULL,
  FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
  FOREIGN KEY (id_odontologo) REFERENCES Odontologo(id_odontologo)
);

-- Creación de la tabla Tratamiento
CREATE TABLE if not exists Tratamiento (
  id_tratamiento INT PRIMARY KEY AUTO_INCREMENT,
  nombre_clave VARCHAR(100) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE,
  terminado BOOLEAN NOT NULL,
  id_consulta INT NOT NULL,
  id_odontologo INT NOT NULL,
  FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
  FOREIGN KEY (id_odontologo) REFERENCES Odontologo(id_odontologo)
);

-- Sentencias para modificar las columnas y que se puedan aceptar valores nulos
ALTER TABLE Tratamiento MODIFY fecha_inicio DATE;
ALTER TABLE Tratamiento MODIFY fecha_fin DATE;
ALTER TABLE Tratamiento MODIFY terminado BOOLEAN;

-- Creación de la tabla sucursal
CREATE TABLE if not exists sucursal (
  id_sucursal INT PRIMARY KEY AUTO_INCREMENT,
  nombre_sucursal VARCHAR(100) NOT NULL,
  capacidad_sucursal INT NOT NULL
);

-- Creación de la tabla direc_sucursal
CREATE TABLE if not exists direc_sucursal (
  id_sucursal INT NOT NULL,
  calle_sucursal VARCHAR(100) NOT NULL,
  numero_sucursal INT NOT NULL,
  colonia_sucursal VARCHAR(100) NOT NULL,
  ciudad_sucursal VARCHAR(100) NOT NULL,
  codigoPostal_sucursal INT NOT NULL,
  FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);

-- Creación de la tabla Consultorio
CREATE TABLE if not exists Consultorio (
  id_consultorio INT PRIMARY KEY AUTO_INCREMENT,
  id_sucursal INT NOT NULL,
  FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);

-- Creación de la tabla Equipo
CREATE TABLE if not exists Equipo (
  numero_serie VARCHAR(50) PRIMARY KEY NOT NULL,
  tipo_equipo VARCHAR(100) NOT NULL,
  fecha_mantenimiento DATE NOT NULL,
  id_consultorio INT NOT NULL,
  FOREIGN KEY (id_consultorio) REFERENCES Consultorio(id_consultorio)
);

-- Creación de la tabla Contacto
CREATE TABLE if not exists Contacto (
	id_contacto INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

-- Creación de la tabla Programada
CREATE TABLE if not exists Programada (
	id_consulta INT NOT NULL,
	id_contacto INT NOT NULL,
	FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
	FOREIGN KEY (id_contacto) REFERENCES Contacto(id_contacto)
);

-- Creación de la tabla Emergencia
CREATE TABLE if not exists Emergencia (
	id_consulta INT NOT NULL,
	id_contacto INT NOT NULL,
	FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
	FOREIGN KEY (id_contacto) REFERENCES Contacto(id_contacto)
);



/*** Triggers para tablas ***/ 
-- Tabla direc_paciente
DELIMITER //
CREATE TRIGGER tr_direc_paciente_delete
BEFORE DELETE ON direc_paciente
FOR EACH ROW
BEGIN
    DELETE FROM direc_paciente WHERE id_paciente = OLD.id_paciente;
END//
DELIMITER ;

-- Tabla Odontologo
DELIMITER //
CREATE TRIGGER tr_Odontologo_delete
BEFORE DELETE ON Odontologo
FOR EACH ROW
BEGIN
    DELETE FROM Odontologo WHERE id_consultorio = OLD.id_consultorio;
END//
DELIMITER ;

-- Tabla Consulta
DELIMITER //
CREATE TRIGGER tr_Consulta_delete
BEFORE DELETE ON Consulta
FOR EACH ROW
BEGIN
    DELETE FROM Consulta WHERE id_paciente = OLD.id_paciente;
    DELETE FROM Consulta WHERE id_odontologo = OLD.id_odontologo;
END//
DELIMITER ;

-- Tabla Tratamiento
DELIMITER //
CREATE TRIGGER tr_Tratamiento_delete
BEFORE DELETE ON Tratamiento
FOR EACH ROW
BEGIN
    DELETE FROM Tratamiento WHERE id_consulta = OLD.id_consulta;
    DELETE FROM Tratamiento WHERE id_odontologo = OLD.id_odontologo;
END//
DELIMITER ;

-- Tabla sucursal
DELIMITER //
CREATE TRIGGER tr_sucursal_delete
BEFORE DELETE ON sucursal
FOR EACH ROW
BEGIN
    DELETE FROM sucursal WHERE id_odontologo = OLD.id_odontologo;
END//
DELIMITER ;

-- Tabla direc_sucursal
DELIMITER //
CREATE TRIGGER tr_direc_sucursal_delete
BEFORE DELETE ON direc_sucursal
FOR EACH ROW
BEGIN
    DELETE FROM direc_sucursal WHERE id_sucursal = OLD.id_sucursal;
END//
DELIMITER ;

-- Tabla Consultorio
DELIMITER //
CREATE TRIGGER tr_Consultorio_delete
BEFORE DELETE ON Consultorio
FOR EACH ROW
BEGIN
    DELETE FROM Consultorio WHERE id_sucursal = OLD.id_sucursal;
    DELETE FROM Consultorio WHERE id_odontologo = OLD.id_odontologo;
END//
DELIMITER ;

-- Tabla Equipo
DELIMITER //
CREATE TRIGGER tr_Equipo_delete
BEFORE DELETE ON Equipo
FOR EACH ROW
BEGIN
    DELETE FROM Equipo WHERE id_consultorio = OLD.id_consultorio;
END//
DELIMITER ;

-- Tabla Programada
DELIMITER //
CREATE TRIGGER tr_Programada_delete
BEFORE DELETE ON Programada
FOR EACH ROW
BEGIN
    DELETE FROM Programada WHERE id_consulta = OLD.id_consulta;
    DELETE FROM Programada WHERE id_contacto = OLD.id_contacto;
END//
DELIMITER ;

-- Tabla Emergencia
DELIMITER //
CREATE TRIGGER tr_Emergencia_delete
BEFORE DELETE ON Emergencia
FOR EACH ROW
BEGIN
    DELETE FROM Emergencia WHERE id_consulta = OLD.id_consulta;
    DELETE FROM Emergencia WHERE id_contacto = OLD.id_contacto;
END//
DELIMITER ;



/*** Stored Procedures para tablas ***/ 
-- Stored Procedure para insertar un nuevo paciente
DELIMITER //
CREATE PROCEDURE sp_InsertarPaciente(
    IN nombre VARCHAR(50),
    IN apellido_paterno VARCHAR(50),
    IN apellido_materno VARCHAR(50),
    IN fecha_nacimiento DATE,
    IN edad INT,
    IN calle VARCHAR(100),
    IN numero INT,
    IN colonia VARCHAR(100),
    IN codigo_postal INT
)
BEGIN
    INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
    VALUES (nombre, apellido_paterno, apellido_materno, fecha_nacimiento, edad);
    
    SET @id_paciente = LAST_INSERT_ID();
    
    INSERT INTO direc_paciente (calle, numero, colonia, codigo_postal, id_paciente)
    VALUES (calle, numero, colonia, codigo_postal, @id_paciente);
END//
DELIMITER ;

-- Stored Procedure para obtener la lista de consultas de un paciente
DELIMITER //
CREATE PROCEDURE sp_ConsultasPorPaciente(
    IN paciente_id INT
)
BEGIN
    SELECT *
    FROM Consulta
    WHERE id_paciente = paciente_id;
END//
DELIMITER ;

-- Stored Procedure para actualizar la especialidad de un odontólogo
DELIMITER //
CREATE PROCEDURE sp_ActualizarEspecialidad(
    IN odontologo_id INT,
    IN nueva_especialidad VARCHAR(100)
)
BEGIN
    UPDATE Odontologo
    SET especialidad = nueva_especialidad
    WHERE id_odontologo = odontologo_id;
END//
DELIMITER ;


/*** Consultas a todas las tablas ***/
select * from paciente;
select * from consulta;
select * from contacto;
select * from consultorio;
select * from direc_paciente;
select * from direc_sucursal;
select * from equipo;
select * from emergencia;
select * from odontologo;
select * from programada;
select * from sucursal;
select * from tratamiento;

/*** Insercciones en tablas ***/
-- Insercciones a tabla Paciente
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES
    ('Juan', 'García', 'López', '1990-05-15', 31),
    ('María', 'Martínez', 'Hernández', '1985-09-20', 36),
    ('Pedro', 'Rodríguez', 'Gómez', '1998-02-10', 23),
    ('Laura', 'López', 'Pérez', '1992-07-08', 29),
    ('Carlos', 'González', 'Ruiz', '1978-12-03', 44),
    ('Ana', 'Sánchez', 'Fernández', '1989-03-25', 32),
    ('Miguel', 'Torres', 'Díaz', '1995-11-12', 27),
    ('Lucía', 'Herrera', 'Vargas', '1993-06-18', 28),
    ('Alejandro', 'Navarro', 'Silva', '1997-09-05', 24),
    ('Sofía', 'Rojas', 'Mendoza', '1987-04-30', 34);

-- Insercciones a tabla direc_paciente
INSERT INTO direc_paciente (calle, numero, colonia, codigo_postal, id_paciente)
VALUES
    ('Calle 1', 123, 'Colonia A', 10001, 1),
    ('Calle 2', 456, 'Colonia B', 10002, 2),
    ('Calle 3', 789, 'Colonia C', 10003, 3),
    ('Calle 4', 234, 'Colonia D', 10004, 4),
    ('Calle 5', 567, 'Colonia E', 10005, 5),
    ('Calle 6', 890, 'Colonia F', 10006, 6),
    ('Calle 7', 123, 'Colonia G', 10007, 7),
    ('Calle 8', 456, 'Colonia H', 10008, 8),
    ('Calle 9', 789, 'Colonia I', 10009, 9),
    ('Calle 10', 234, 'Colonia J', 10010, 10);

-- Insercciones a tabla Odontologo
INSERT INTO Odontologo (nombre, apellido_paterno, apellido_materno, especialidad, numero_trabajador)
VALUES
    ('Luis', 'Hernández', 'López', 'Ortodoncia', 1001),
    ('Ana', 'Gómez', 'Martínez', 'Endodoncia', 1002),
    ('Jorge', 'Pérez', 'Ramírez', 'Periodoncia', 1003),
    ('María', 'López', 'Herrera', 'Odontopediatría', 1004),
    ('Pedro', 'Ruiz', 'González', 'Cirugía Oral', 1005),
    ('Laura', 'Fernández', 'Sánchez', 'Implantología', 1006),
    ('Carlos', 'Díaz', 'Torres', 'Ortodoncia', 1007),
    ('Sofía', 'Vargas', 'Herrera', 'Endodoncia', 1008),
    ('Miguel', 'Silva', 'Navarro', 'Periodoncia', 1009),
    ('Lucía', 'Mendoza', 'Rojas', 'Odontopediatría', 1010);

-- Insercciones a tabla Consultorio
INSERT INTO Consultorio (id_sucursal)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);

-- Insercciones a tabla Consulta
INSERT INTO Consulta (fecha_consulta, numero_consulta, id_paciente, id_odontologo)
VALUES
    ('2023-06-01', 1, 1, 1),
    ('2023-06-02', 2, 2, 2),
    ('2023-06-03', 3, 3, 3),
    ('2023-06-04', 4, 4, 4),
    ('2023-06-05', 5, 5, 5),
    ('2023-06-06', 6, 6, 6),
    ('2023-06-07', 7, 7, 7),
    ('2023-06-08', 8, 8, 8),
    ('2023-06-09', 9, 9, 9),
    ('2023-06-10', 10, 10, 10);

-- Insercciones a tabla Tratamiento
INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, fecha_fin, terminado, id_consulta, id_odontologo)
VALUES
    ('Limpieza dental', 500.00, '2023-06-01', NULL, 1, 1, 1),
    ('Extracción de muela', 1500.00, '2023-06-02', '2023-06-10', 1, 2, 2),
    ('Empaste dental', 800.00, '2023-06-03', '2023-06-05', 1, 3, 3),
    ('Limpieza dental', 500.00, '2023-06-04', NULL, 1, 4, 4),
    ('Ortodoncia', 10000.00, '2023-06-05', NULL, 0, 5, 5),
    ('Extracción de muela', 1500.00, '2023-06-06', '2023-06-08', 1, 6, 6),
    ('Limpieza dental', 500.00, '2023-06-07', NULL, 1, 7, 7),
    ('Empaste dental', 800.00, '2023-06-08', '2023-06-09', 1, 8, 8),
    ('Ortodoncia', 10000.00, '2023-06-09', NULL, 0, 9, 9),
    ('Extracción de muela', 1500.00, '2023-06-10', '2023-06-15', 1, 10, 10);

-- Insercciones a tabla sucursal
INSERT INTO sucursal (nombre_sucursal, capacidad_sucursal)
VALUES
    ('Sucursal A', 50),
    ('Sucursal B', 40),
    ('Sucursal C', 30),
    ('Sucursal D', 60),
    ('Sucursal E', 35),
    ('Sucursal F', 45),
    ('Sucursal G', 55),
    ('Sucursal H', 25),
    ('Sucursal I', 50),
    ('Sucursal J', 40);

-- Insercciones a tabla direc_sucursal
INSERT INTO direc_sucursal (id_sucursal, calle_sucursal, numero_sucursal, colonia_sucursal, ciudad_sucursal, codigoPostal_sucursal)
VALUES
    (1, 'Calle Principal', 123, 'Colonia A', 'Ciudad A', 10001),
    (2, 'Calle Secundaria', 456, 'Colonia B', 'Ciudad B', 10002),
    (3, 'Calle Central', 789, 'Colonia C', 'Ciudad C', 10003),
    (4, 'Calle Norte', 234, 'Colonia D', 'Ciudad D', 10004),
    (5, 'Calle Sur', 567, 'Colonia E', 'Ciudad E', 10005),
    (6, 'Calle Este', 890, 'Colonia F', 'Ciudad F', 10006),
    (7, 'Calle Oeste', 123, 'Colonia G', 'Ciudad G', 10007),
    (8, 'Calle Principal', 456, 'Colonia H', 'Ciudad H', 10008),
    (9, 'Calle Secundaria', 789, 'Colonia I', 'Ciudad I', 10009),
    (10, 'Calle Central', 234, 'Colonia J', 'Ciudad J', 10010);

-- Insercciones a tabla Equipo
INSERT INTO Equipo (numero_serie, tipo_equipo, fecha_mantenimiento, id_consultorio)
VALUES
    ('E001', 'Rayos X', '2023-05-01', 1),
    ('E002', 'Silla dental', '2023-05-02', 2),
    ('E003', 'Compresor de aire', '2023-05-03', 3),
    ('E004', 'Autoclave', '2023-05-04', 4),
    ('E005', 'Lámpara de fotocurado', '2023-05-05', 5),
    ('E006', 'Scaler', '2023-05-06', 6),
    ('E007', 'Fresa dental', '2023-05-07', 7),
    ('E008', 'Ultrasonido', '2023-05-08', 8),
    ('E009', 'Microscopio', '2023-05-09', 9),
    ('E010', 'Lámpara de blanqueamiento', '2023-05-10', 10);

-- Insercciones a tabla Consultorio
INSERT INTO Contacto (id_contacto)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);
    
-- Insercciones a tabla Emergencia
INSERT INTO Emergencia (id_consulta, id_contacto)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Insercciones a tabla Programada
INSERT INTO Programada (id_consulta, id_contacto)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Actualizaciones de columnas
update Odontologo set id_consultorio = 10 where id_odontologo = 10;

/*** Consultas a todas las tablas ***/
select * from paciente;
select * from consulta;
select * from contacto;
select * from consultorio;
select * from direc_paciente;
select * from direc_sucursal;
select * from equipo;
select * from emergencia;
select * from odontologo;
select * from programada;
select * from sucursal;
select * from tratamiento;



/*** Consultas solicitadas ***/
-- 1) Genere una vista donde visualice que odontologo atiende a que paciente.
CREATE VIEW VistaOdontologoPaciente AS
SELECT o.id_odontologo, o.nombre, o.apellido_paterno, o.apellido_materno,
       p.id_paciente, p.nombre_paciente, p.apellido_paterno AS apellido_paciente, p.apellido_materno AS apellido_materno_paciente
FROM Odontologo o
JOIN Consulta c ON o.id_odontologo = c.id_odontologo
JOIN Paciente p ON c.id_paciente = p.id_paciente;

SELECT * FROM VistaOdontologoPaciente;

-- 2) Genere un reporte donde se recupere que tratamiento realiza cada odontologo
SELECT o.nombre, o.apellido_paterno, o.apellido_materno, t.nombre_clave AS tratamiento_realizado
FROM Odontologo o
JOIN Tratamiento t ON o.id_odontologo = t.id_odontologo;

-- 3) En que clinica trabaja que odontologos
SELECT O.nombre, O.apellido_paterno, O.apellido_materno, S.nombre_sucursal
FROM Odontologo AS O
JOIN Consultorio AS C ON O.id_consultorio = C.id_consultorio
JOIN Sucursal AS S ON C.id_sucursal = S.id_sucursal;

-- 4) Genere una funcion que a partir de introducir el nombre completo del paciente genere lo siguiente: | Nombre_completo_Paciente | Edad | Tratamiento | Precio | Nombre_completo_Odontologo | Cedula | Clinica
-- Funciona en Postgres
CREATE FUNCTION informacion_paciente(nombre_completo VARCHAR(150))
RETURNS TEXT
BEGIN
    DECLARE resultado TEXT;
    DECLARE nombre_paciente, apellido_paterno, apellido_materno VARCHAR(50);
    DECLARE edad INT;
    DECLARE tratamiento, precio, nombre_odontologo, cedula_clinica TEXT;

    SET @nombre_paciente = SUBSTRING_INDEX(nombre_completo, ' ', 1);
    SET @apellido_paterno = SUBSTRING_INDEX(SUBSTRING_INDEX(nombre_completo, ' ', 2), ' ', -1);
    SET @apellido_materno = SUBSTRING_INDEX(SUBSTRING_INDEX(nombre_completo, ' ', 3), ' ', -1);

    SELECT edad INTO @edad FROM Paciente WHERE nombre_paciente = @nombre_paciente AND apellido_paterno = @apellido_paterno AND apellido_materno = @apellido_materno;

    SELECT GROUP_CONCAT(nombre_clave SEPARATOR ', '), GROUP_CONCAT(precio SEPARATOR ', ') INTO @tratamiento, @precio FROM Tratamiento
    JOIN Consulta ON Tratamiento.id_consulta = Consulta.id_consulta
    JOIN Paciente ON Consulta.id_paciente = Paciente.id_paciente
    WHERE Paciente.nombre_paciente = @nombre_paciente AND Paciente.apellido_paterno = @apellido_paterno AND Paciente.apellido_materno = @apellido_materno;

    SELECT GROUP_CONCAT(CONCAT(Odontologo.nombre, ' ', Odontologo.apellido_paterno, ' ', Odontologo.apellido_materno) SEPARATOR ', '), GROUP_CONCAT(id_consultorio SEPARATOR ', ') INTO @nombre_odontologo, @cedula_clinica FROM Odontologo
    JOIN Consulta ON Odontologo.id_odontologo = Consulta.id_odontologo
    JOIN Paciente ON Consulta.id_paciente = Paciente.id_paciente
    WHERE Paciente.nombre_paciente = @nombre_paciente AND Paciente.apellido_paterno = @apellido_paterno AND Paciente.apellido_materno = @apellido_materno;

    SET resultado = CONCAT('Nombre completo: ', nombre_completo, '\nEdad: ', @edad, '\nTratamiento: ', @tratamiento, '\nPrecio: ', @precio, '\nNombre completo odontólogo: ', @nombre_odontologo, '\nCédula clínica: ', @cedula_clinica);

    RETURN resultado;
END


-- 5) Ingrese la siguiente informacion: Juan Ramirez Iñiguez de 38 años, ingreso a la clinica dentalink para un tratamiento de carillas, el cual tiene un costo de $500.00, para ello el odontologo que lo atiende se llama Maria Angeles Peña con especialidad en ortodoncia.
-- se agrega el paciente
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('Juan', 'Ramirez', 'Iñiguez', '1985-06-27', 38);

-- se agrega el tratamiento/
INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Carillas', 500.00, NULL, NULL, 1, 1);

-- se agrega el odontologo/
INSERT INTO Odontologo (nombre, apellido_paterno, apellido_materno, especialidad, numero_trabajador, id_consultorio)
VALUES ('Maria ', 'Angeles', 'Peña', 'ortodoncia', 111, 1);

-- 6) Genere una funcion que me regrese los tratamientos que ha realizado un odontologo| a partir de su nombre y de la fecha de inicio.
-- Funciona en Postgres
CREATE FUNCTION ObtenerTratamientosPorOdontologo(
    nombre_odontologo VARCHAR(100),
    fecha_inicio DATE
)
RETURNS TABLE (
    nombre_odontologo VARCHAR(100),
    tratamiento VARCHAR(100),
    fecha_inicio DATE,
    fecha_fin DATE
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        o.nombre_completo AS nombre_odontologo,
        t.nombre AS tratamiento,
        p.fecha_inicio,
        p.fecha_fin
    FROM
        Odontologo o
        JOIN Paciente p ON o.id = p.id_odontologo
        JOIN Tratamiento t ON p.id_tratamiento = t.id
    WHERE
        o.nombre_completo = nombre_odontologo
        AND p.fecha_inicio >= fecha_inicio;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM ObtenerTratamientosPorOdontologo('Maria Angeles Peña', '2023-01-01');

-- 7) Ingrese 10 nuevos odontologos con información en cada campo
INSERT INTO Odontologo (nombre, apellido_paterno, apellido_materno, especialidad, numero_trabajador, id_consultorio)
VALUES
  ('Carlos', 'González', 'López', 'Ortodoncia', 101, 1),
  ('Ana', 'Martínez', 'Sánchez', 'Periodoncia', 102, 2),
  ('Luis', 'Hernández', 'Pérez', 'Endodoncia', 103, 3),
  ('Laura', 'García', 'Rodríguez', 'Cirugía Oral', 104, 4),
  ('Pedro', 'López', 'Gómez', 'Odontopediatría', 105, 5),
  ('María', 'Torres', 'Vargas', 'Implantología', 106, 6),
  ('Javier', 'Díaz', 'Mendoza', 'Ortodoncia', 107, 7),
  ('Sofía', 'Ramírez', 'Jiménez', 'Periodoncia', 108, 8),
  ('Alejandro', 'Sánchez', 'Flores', 'Endodoncia', 109, 9),
  ('Elena', 'Pérez', 'Ruiz', 'Cirugía Oral', 110, 10);

-- 8) Ingrese 10 nuevos clientes con sus tratamientos y asignelos a los nuevos odontologos que ingreso. Minimo debe estar asignado a 4 de los nuevos odontologos
-- se insertan los clientes y tratamientos
-- cte 1 
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('jesus', 'moran', 'razo', '1990-01-01', 33);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio,fecha_fin, terminado, id_consulta, id_odontologo)
VALUES ('Limpieza dental', 500.00, '2023-06-01', NULL, 1, 100, 101);

-- cte 2
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('ramiro', 'baez', 'perez', '1995-02-02', 28);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Extracción de muela', 1500.00, '2023-06-02', '2023-06-10', 1, 200, 102);

-- cte 3
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('camila', 'corona', 'lopez', '1988-03-03', 35);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Empaste dental', 800.00, '2023-06-03', '2023-06-05', 1, 300, 103);

-- cte 4
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('martin', 'aguilar', 'dominguez', '1992-04-04', 31);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Limpieza dental', 500.00, '2023-06-04', NULL, 1, 400, 104);

-- cte 5
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('ramon', 'ortuño', 'olivar', '1997-05-05', 26);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Extracción de muela', 1500.00, '2023-06-06', '2023-06-08', 1, 699, 106);

-- cte 6
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('sael', 'ramos', 'salvador', '1991-06-06', 32);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Limpieza dental', 500.00, '2023-06-07', NULL, 1, 700, 107);

-- cte 7
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('angelica', 'arellano', 'del mazo', '1994-07-07', 29);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Empaste dental', 800.00, '2023-06-08', '2023-06-09', 1, 601, 105);

-- cte 8
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('paola', 'hernandez', 'moreno', '1993-08-08', 30);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Ortodoncia', 10000.00, '2023-06-09', NULL, 0, 509, 108);

-- cte 9
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('victoria', 'alpizar', 'ruiz', '1989-09-09', 34);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Limpieza dental', 500.00, '2023-06-07', NULL, 1, 507, 109);

-- cte 10
INSERT INTO Paciente (nombre_paciente, apellido_paterno, apellido_materno, fecha_nacimiento, edad)
VALUES ('ramses', 'nuñez', 'alcantara', '1996-10-10', 25);

INSERT INTO Tratamiento (nombre_clave, precio, fecha_inicio, terminado, id_consulta, id_odontologo)
VALUES ('Extracción de muela', 1500.00, '2023-06-10', '2023-06-15', 1, 501, 110);

/*** Consultas a todas las tablas ***/
select * from paciente;
select * from consulta;
select * from contacto;
select * from consultorio;
select * from direc_paciente;
select * from direc_sucursal;
select * from equipo;
select * from emergencia;
select * from odontologo;
select * from programada;
select * from sucursal;
select * from tratamiento;

-- Integrantes --
-- Aguilar Ibarra José Moisés -- Boleta: 2022630329
-- González Cárdenas Ángel Aquilez -- Boleta: 2016630152
-- Pérez Olivares José Julio -- 2022630070

