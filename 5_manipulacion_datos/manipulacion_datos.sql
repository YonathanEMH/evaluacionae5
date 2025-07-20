-- Inserción
INSERT INTO productos (nombre, descripcion, precio, cantidad_inventario)
VALUES ('Laptop Lenovo', 'Laptop de 16GB RAM', 750000, 10);

INSERT INTO proveedores (nombre, direccion, telefono, email)
VALUES ('Proveedor Tech', 'Av. Siempre Viva 123', '987654321', 'proveedor@correo.com');

INSERT INTO transacciones (tipo, fecha, cantidad, id_producto, id_proveedor)
VALUES ('compra', '2024-07-01', 5, 1, 1);

-- Actualización después de una venta
UPDATE productos
SET cantidad_inventario = cantidad_inventario - 3
WHERE id_producto = 1;

-- Eliminación de un producto
DELETE FROM productos
WHERE id_producto = 2;
