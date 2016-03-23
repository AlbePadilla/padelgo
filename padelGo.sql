DROP DATABASE IF EXISTS padelGo;

CREATE DATABASE padelGo character set utf8 collate utf8_general_ci;

USE padelGo;

CREATE TABLE Categorias
(
	idCategoria int(1) NOT NULL AUTO_INCREMENT,
	nombreCategoria varchar(10) NOT NULL,
	PRIMARY KEY(idCategoria)
);

CREATE TABLE Usuarios 
(
	idUsuario int(9) NOT NULL AUTO_INCREMENT,
	nombre varchar(50) NOT NULL,
	apellidos varchar(50) NOT NULL,
	sexo tinyint(1) NOT NULL,
	fechaNac date NOT NULL,
	direccion varchar(50) NOT NULL,
	telefono int(9) NOT NULL, 
	email varchar(50) NOT NULL UNIQUE,
	clave varchar(50) NOT NULL,
	idCategoria int(1) NOT NULL, 
	PRIMARY KEY(idUsuario),
	FOREIGN KEY(idCategoria) REFERENCES Categorias(idCategoria)
);

CREATE TABLE Clubs
(
	idClub int(9) NOT NULL AUTO_INCREMENT,
	nombreClub varchar(50) NOT NULL, 
	direccionClub varchar(50) NOT NULL,
	numPistas int(2) NOT NULL,	
	PRIMARY KEY(idClub)
);

CREATE TABLE Partidos 
(
	idPartido int(9) NOT NULL AUTO_INCREMENT,
	tipoPartido varchar(10) NOT NULL, 
	fechaPartido date NOT NULL,
	horaPartido time NOT NULL,
	jugador1 tinyint(1) NOT NULL,
	jugador2 tinyint(1) NOT NULL,
	jugador3 tinyint(1) NOT NULL,
	jugador4 tinyint(1) NOT NULL,
	idCategoria int(1) NOT NULL, 
	idUsuario int(9) NOT NULL, 
	idClub int(9) NOT NULL, 
	PRIMARY KEY(idPartido),
	FOREIGN KEY(idCategoria) REFERENCES Categorias(idCategoria),	
	FOREIGN KEY(idUsuario) REFERENCES Usuarios(idUsuario),	
	FOREIGN KEY(idClub) REFERENCES Clubs(idClub)
);


INSERT INTO Categorias VALUES
('', 'Primera'),
('', 'Segunda'),
('', 'Tercera'),
('', 'Cuarta'),
('', 'Quinta');




