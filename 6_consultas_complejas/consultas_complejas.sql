-- Total de ventas del mes anterior
SELECT p.nombre, SUM(t.cantidad) AS total_vendido
FROM transacciones t
JOIN productos p ON t.id_producto = p.id_producto
WHERE t.tipo = 'venta'
AND MONTH(t.fecha) = MONTH(CURDATE()) - 1
GROUP BY p.nombre;

-- INNER JOIN para obtener info relacionada
SELECT t.id_transaccion, p.nombre AS producto, pr.nombre AS proveedor, t.tipo, t.fecha
FROM transacciones t
JOIN productos p ON t.id_producto = p.id_producto
JOIN proveedores pr ON t.id_proveedor = pr.id_proveedor;

-- Subconsulta: productos no vendidos el mes pasado
SELECT * FROM productos
WHERE id_producto NOT IN (
    SELECT id_producto
    FROM transacciones
    WHERE tipo = 'venta'
    AND MONTH(fecha) = MONTH(CURDATE()) - 1
);
