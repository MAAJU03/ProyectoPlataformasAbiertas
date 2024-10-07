--Eliminación de datos donde el id de venta sea 5
DELETE FROM Ventas WHERE id_venta = 5;

-- Actualización del stock de la tabla prendas, en este caso se actualizará el artículo Camiseta Nike Pro
UPDATE Prendas
SET stock = stock - 3
WHERE id_prenda = 1;



