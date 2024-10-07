-- Muestra una lista de las marcas que tiene al menos una venta 
CREATE VIEW MarcasConVentas AS
SELECT DISTINCT marc.nombre_marca
FROM Marcas marc
JOIN Prendas prend ON marc.id_marca = prend.id_marca
JOIN Ventas vent ON prend.id_prenda = vent.id_prenda;

-- Nos da las prendas vendidas y la cantidad restante en stock
CREATE VIEW PrendasVendidasYStock AS
SELECT prend.nombre_prenda, SUM(vent.cantidad) AS total_vendido, prend.stock
FROM Prendas prend
JOIN Ventas vent ON prend.id_prenda = vent.id_prenda
GROUP BY prend.nombre_prenda, prend.stock;

-- Nos muestra las 5 marcas más vendidas y la cantidad de ventas
CREATE VIEW Top5MarcasVendidas AS
SELECT marc.nombre_marca, SUM(vent.cantidad) AS total_ventas
FROM Marcas marc
JOIN Prendas prend ON marc.id_marca = prend.id_marca
JOIN Ventas vent ON prend.id_prenda = vent.id_prenda
GROUP BY marc.nombre_marca
ORDER BY total_ventas DESC
LIMIT 5;

