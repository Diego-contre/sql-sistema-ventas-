-- =====================================
-- REPORTE SQL - CHALLENGER SISTEMA VENTAS
-- =====================================

-- 1. Mostrar todos los clientes registrados(victor)
SELECT *
FROM clientes;

-- 2. Mostrar todos los productos disponibles (bea)


-- 3. Mostrar todas las ventas realizadas (diego)


-- 4. Mostrar solo nombre y email de clientes (alexander)


-- 5. Mostrar solo nombre y precio de productos (javi)


-- 6. Productos con precio mayor a 50000 (victor)
SELECT id_producto, nombre, precio
FROM productos
WHERE precio > 50000;

-- 7. Ventas realizadas el 2026-04-02 (bea)


-- 8. Productos ordenados de mayor a menor precio (diego)


-- 9. Clientes ordenados por nombre (alexander)


-- 10. Detalles de venta con cantidad >= 2 (javi)


-- 11. Total de clientes (victor)
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- 12. Total de productos (bea)


-- 13. Total de ventas (diego)


-- 14. Precio promedio de productos (alexander)


-- 15. Suma total de precios de productos (javi)


-- 16. Mostrar venta + nombre del cliente + fecha (victor)
SELECT v.id_venta,
c.nombre AS nombre_cliente,
v.fecha
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente;


-- 17. Mostrar detalle de ventas con id_venta + nombre producto + cantidad(bea)


-- 18. Mostrar nombre del cliente + id de venta + fecha  (alexander)


-- 19. Mostrar nombre del producto + cantidad vendida + id de venta (javi)


-- 20. Mostrar cuántas ventas ha realizado cada cliente (diego)


-- 21. Mostrar solo los clientes con más de una venta (victor)
SELECT c.nombre AS nombre_cliente,
COUNT(v.id_venta) AS total_ventas
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
HAVING COUNT(v.id_venta) > 1
ORDER BY total_ventas;

-- 22. Mostrar cuántas veces aparece cada producto en detalle_venta(bea)


-- 23. Mostrar solo los productos que aparecen más de una vez (diego)


-- 24. Mostrar las ventas que tienen más de un producto asociado (alexander)


-- 25. Mostrar clientes cuya suma total de unidades compradas sea mayor a 2 (javi)


-- 26. Consulta trampa que no devuelva resultados
-- Explicar por qué el resultado vacío es correcto  (todos juntos rojo)