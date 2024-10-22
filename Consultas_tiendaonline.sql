CREATE DATABASE TiendaOnline;
USE TiendaOnline;

-- Obtén todos los clientes cuyo nombre sea "Juan Pérez".
SELECT * FROM Clientes WHERE Nombre = "Jan Perez";

-- Muestra todos los productos cuyo precio no sea igual a 100.
SELECT * FROM Productos WHERE Precio != 100;

-- Encuentra todos los pedidos cuyo total sea mayor a 500.
SELECT * FROM Pedidos WHERE Total > 500;

-- Encuentra todos los productos con menos de 20 unidades en stock.
SELECT * FROM Productos WHERE Stock < 20;

-- Muestra todos los clientes registrados después del 1 de enero de 2024. 6. Obtén todos los productos con un precio entre 100 y 500.
SELECT * FROM Clientes WHERE Fecha_Registro > "2024-01-01";

-- Obtén todos los productos con un precio entre 100 y 500.
SELECT * FROM Productos WHERE Precio BETWEEN 100 AND 500;

-- Encuentra todos los pedidos cuyo total no esté entre 200 y 1000.
SELECT * FROM Productos WHERE Precio BETWEEN 200 AND 1000;

-- Muestra todos los clientes cuyo ID_Cliente sea 1, 3, o 5.
SELECT * FROM Clientes WHERE ID_Cliente IN ( 1, 3, 5);


-- Encuentra todos los productos cuyo ID_Producto no sea 2 ni 4.
SELECT * FROM Clientes WHERE ID_Clientes IN (1, 3, 5);

-- Muestra todos los pedidos realizados en el año 2024.
SELECT * FROM Pedidos WHERE YEAR (Fecha_Pedido) LIKE '2024';

-- Muestra los clientes y sus pedidos