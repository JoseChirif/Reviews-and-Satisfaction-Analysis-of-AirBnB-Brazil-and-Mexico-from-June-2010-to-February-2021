---------------------------
--TRABAJO FINAL CODERHOUSE
--CURSO: Data Analisis
--JOSE CHIRIF MOLINA
--Análisis de Reviews y Satisfacción de AirBnB Brasil y México
--------------------------
--------------------------
--Creación BD AnalisisAIRBNB
--------------------------


CREATE DATABASE AnalisisAIRBNB;

USE AnalisisAIRBNB;

--Tabla Host:
CREATE TABLE Host(
Host_ID INT PRIMARY KEY NOT NULL,
Fecha_inicio_host DATE,
Ubicacion_del_host CHAR(50),
Nombre_host CHAR(30),
Ratio_respuestas_host FLOAT
);
ALTER TABLE Host
DROP COLUMN Ubicacion_del_host;

ALTER TABLE Host
ALTER COLUMN Nombre_host CHAR(260);


--Tabla Propiedades:
CREATE TABLE Propiedades(
Listing_id INT PRIMARY KEY NOT NULL,
Host_id INT NOT NULL,
ID_ciudad INT NOT NULL,
Precio DECIMAL (4,2)
);
ALTER TABLE Propiedades
ALTER COLUMN Precio INT;



--Tabla Reviews:
CREATE TABLE Reviews(
Fecha DATE,
Review_id INT PRIMARY KEY NOT NULL,
Huesped_id INT NOT NULL,
Listing_id INT NOT NULL,
Review_puntaje_total INT,
Review_puntaje_exactituddescripcion INT,
Review_puntaje_limpieza INT,
Review_puntaje_valorcliente INT,
Review_puntaje_comunicacion INT,
Review_puntaje_ubicacion INT
);



--Tabla Ciudades:
CREATE TABLE Ciudades(
ID_ciudad INT PRIMARY KEY NOT NULL,
Nombre CHAR(30) NOT NULL,
ID_Pais INT NOT NULL,
Poblacion_millones FLOAT
);


--Tabla Paises:
CREATE TABLE Paises(
ID_Pais INT PRIMARY KEY NOT NULL,
Nombre CHAR(30) NOT NULL,
Moneda CHAR(3) NOT NULL,
Conversion_usd FLOAT
);




