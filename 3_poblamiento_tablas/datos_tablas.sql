-- Insertar productos
INSERT INTO productos (nombre, descripcion, precio, cantidad_inventario) VALUES
('Laptop Lenovo ThinkPad', 'Laptop empresarial con procesador i5 y 16GB RAM', 750000.00, 20),
('Mouse Logitech MX Master 3', 'Mouse inalámbrico ergonómico para productividad', 69990.00, 50),
('Monitor LG UltraGear 32"', 'Monitor gaming 2K de 144Hz', 280000.00, 15),
('Teclado Mecánico Redragon', 'Teclado mecánico con retroiluminación RGB', 44990.00, 35),
('Silla Ergonómica Gamer', 'Silla ajustable para largas jornadas de trabajo', 120000.00, 10);

-- Insertar proveedores
INSERT INTO proveedores (nombre, direccion, telefono, email) VALUES
('TecnoChile S.A.', 'Av. Providencia 1234, Santiago', '+56912345678', 'ventas@tecnochile.cl'),
('CompuExpress Ltda.', 'Calle Larga 456, Valparaíso', '+56987654321', 'contacto@compuexpress.cl'),
('ElectroMundo', 'Ruta 5 Sur Km. 10, Talca', '+56923456789', 'info@electromundo.cl');

-- Insertar transacciones (compra o venta)
INSERT INTO transacciones (tipo, fecha, cantidad, id_producto, id_proveedor) VALUES
('compra', '2025-07-01', 10, 1, 1), -- 10 laptops de TecnoChile
('compra', '2025-07-03', 25, 2, 2), -- 25 mouses de CompuExpress
('venta',  '2025-07-05', 3, 1, 1),  -- venta de 3 laptops (proveedor informativo)
('venta',  '2025-07-06', 2, 2, 2),  -- venta de 2 mouses
('compra', '2025-07-08', 8, 3, 3),  -- 8 monitores de ElectroMundo
('venta',  '2025-07-10', 2, 3, 3),  -- venta de 2 monitores
('compra', '2025-07-12', 10, 4, 2), -- teclados
('venta',  '2025-07-14', 4, 4, 2),  -- venta teclados
('compra', '2025-07-15', 5, 5, 1),  -- sillas
('venta',  '2025-07-17', 2, 5, 1);  -- venta sillas
