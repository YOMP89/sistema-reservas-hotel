
--Creación de la base de datos
CREATE DATABASE sistemashotel;
USE sistemashotal;

--Creación de la tabla clientes
CREATE TABLE clientes (
    cliente:id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    telefono VARCHAR(15),
    correo VARCHAR(100)
);

--Creación tabla habitaciones
CREATE TABLE habitaciones (
    habitaciones_id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    estado VARCHAR(20) DEFAULT 'Disponible'
);

--Creación de la tabla empleados
CREATE TABLE empleados (
    empleados_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NO NULL,
    puesto VARCHAR(50),
    telefono VARCHAR(50),
    correo VARCHAR(100)
);

--creación tabla de reservas
CREATE TABLE reserrvas(
    reservas_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    habitacion_id INT,
    fecha_entrega DATE NOT FULL,
    fecha_salida DATE NOR FULL.
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (habitacion_id) REFERENCES habitaciones(habitaciones_id)
);