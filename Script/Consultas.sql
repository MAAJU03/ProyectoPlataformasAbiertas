-- En esta consulta se obtiene la cantidad vendida de prendas para una fecha específica en este '2024-10-03'
SELECT prend.nombre_prenda, SUM(vent.cantidad) AS total_vendido
FROM Ventas vent
JOIN Prendas prend ON vent.id_prenda = prend.id_prenda
WHERE vent.fecha_venta = '2024-10-03'
GROUP BY prend.nombre_prenda;


