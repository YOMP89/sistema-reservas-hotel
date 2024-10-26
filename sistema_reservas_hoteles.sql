
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

--INSERCION DE DATOS

INSERT INTO clientes (nombre, direccion, telefono, correo) VALUES ('Ana maria','calle 123 falsa','12345678','anam@gmail.com'),
    ('Juan Perez','calle 456 verdadera','98765432','juanp@gmail.com');

INSERT INTO habitaciones (tipo, capacidad, precio) VALUES ('Simple',2,150.00),
    ('Doble',4,250.00),
    ('Triple',6,350.00);

    INSERT INTO empleados (nombre, puesto, telefono, correo) VALUES ('Juan Pablo','Gerente','12345678','juanp@gmail.com'),
    ('Maria Ana','Recepcionista','98765432','mariaa@gmail.com');

    INSERT INTO reservas (cliente_id, habitacion_id, fecha_entrega, fecha_salida) VALUES (1,1,'2022-01-01','2022-01-15'),
    (2,2,'2022-02-01','2022-02-10');
    
    --CONSULTAS
    SELECT * FROM habitaciones;