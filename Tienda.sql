-- Crear la base de datos
CREATE DATABASE TiendaOnline;

-- Usar la base de datos
USE TiendaOnline;

-- Crear la tabla Direcciones (Relacion 1:1 con Clientes)
CREATE TABLE Direcciones (
ID_Direccion INT AUTO_INCREMENT PRIMARY KEY,          -- Clave primaria
Calle VARCHAR(255) NOT NULL,                          -- Calle
Ciudad VARCHAR(100) NOT NULL,                         -- Ciudad
Estado VARCHAR(100) NOT NULL,                         -- Estado
Codigo_Postal VARCHAR(10) NOT NULL,                   -- Codigo_Postal
Pais VARCHAR(100) NOT NULL                            -- Pais
);

CREATE TABLE Clientes (
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE,
Telefono VARCHAR(15),
Fecha_Registro DATE,
ID_Direccion INT UNIQUE,
FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion)
);

CREATE TABLE Productos (
ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Descripcion TEXT,
Precio DECIMAL(10, 2) NOT NULL,
Stock INT NOT NULL,
Fecha_Agregado DATE
);

CREATE TABLE Pedidos (
ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
ID_Cliente INT,
Fecha_Pedido DATE NOT NULL,
Estado VARCHAR(50),
Total DECIMAL(10, 2),
FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

CREATE TABLE Pedidos_Productos (
ID_Pedido INT,
ID_Producto INT,
Cantidad INT NOT NULL,
Precio_Unitario DECIMAL(10, 2) NOT NULL,
PRIMARY KEY (ID_Pedido, ID_Producto),
FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);