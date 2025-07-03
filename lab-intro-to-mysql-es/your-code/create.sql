
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql; 
USE lab_mysql;

CREATE TABLE IF NOT EXISTS coches (
	id MEDIUMINT PRIMARY KEY,
	vin char(17),
	fabricante CHAR(20),
	modelo CHAR(20),
	año SMALLINT(4),
	color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS clientes (
	id MEDIUMINT PRIMARY KEY,
	id_cliente CHAR(5),
	nombre CHAR(40),
	telefono VARCHAR(20),
	email CHAR(50),
	direccion VARCHAR(50),
	ciudad VARCHAR(20),
	provincia VARCHAR(20),
	pais VARCHAR(20),
	cp VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS vendedores (
	id SMALLINT PRIMARY KEY,
	id_personal CHAR(5),
	nombre CHAR(40),
	tienda CHAR(20)
);

CREATE TABLE IF NOT EXISTS facturas (
	id MEDIUMINT PRIMARY KEY,
	num_factura CHAR(9),
	fecha DATE,
	coche MEDIUMINT,
	cliente MEDIUMINT,
	vendedor SMALLINT,
	FOREIGN KEY (coche) REFERENCES coches(id),
	FOREIGN KEY (cliente) REFERENCES clientes(id),
  FOREIGN KEY (vendedor) REFERENCES vendedores(id)
);

drop tables coches, clientes, vendedores, facturas;


