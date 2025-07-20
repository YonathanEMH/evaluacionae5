--Listar todos los productos con su cantidad en inventario y precio
SELECT id_producto, nombre, cantidad_inventario, precio
FROM productos
ORDER BY nombre;

--Mostrar todas las transacciones con nombres de producto y proveedor
SELECT 
    t.id_transaccion,
    t.tipo,
    t.fecha,
    t.cantidad,
    p.nombre AS producto,
    pr.nombre AS proveedor
FROM transacciones t
JOIN productos p ON t.id_producto = p.id_producto
JOIN proveedores pr ON t.id_proveedor = pr.id_proveedor
ORDER BY t.fecha DESC;


--Obtener el total de unidades vendidas por producto
SELECT 
    p.nombre AS producto,
    SUM(t.cantidad) AS total_vendido
FROM transacciones t
JOIN productos p ON t.id_producto = p.id_producto
WHERE t.tipo = 'venta'
GROUP BY p.nombre
ORDER BY total_vendido DESC;


--Cantidad total en inventario y valor monetario del inventario
SELECT 
    SUM(cantidad_inventario) AS total_unidades,
    SUM(cantidad_inventario * precio) AS valor_total_inventario
FROM productos;


--Transacciones realizadas en un rango de fechas específico
SELECT *
FROM transacciones
WHERE fecha BETWEEN '2024-01-01' AND '2024-12-31';
