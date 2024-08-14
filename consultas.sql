-- Mostrar todos los productos
SELECT * FROM productos;

-- Mostrar productos con precio mayor a 300
SELECT * FROM productos WHERE precio > 300;

-- Mostrar el producto más caro
SELECT * FROM productos ORDER BY precio DESC LIMIT 1;

-- Mostrar el promedio de precios
SELECT AVG(precio) AS precio_promedio FROM productos;

-- Contar cuántos productos hay
SELECT COUNT(*) AS total_productos FROM productos;

-- Actualizar el precio de un producto
UPDATE productos SET precio = 649.99 WHERE id = 2;

-- Eliminar un producto
DELETE FROM productos WHERE id = 5;

-- Insertar un nuevo producto
INSERT INTO productos (nombre, descripcion, precio) VALUES ('Smartwatch', 'Reloj inteligente con monitor de ritmo cardíaco', 149.99);

-- Insertar múltiples productos nuevos, incluyendo instrumentos musicales
INSERT INTO productos (nombre, descripcion, precio) VALUES
('Piano de cola', 'Piano de cola profesional de concierto', 15000.00),
('Guitarra eléctrica', 'Guitarra eléctrica de alta gama con pastillas humbucker', 1200.00),
('Batería acústica', 'Set completo de batería acústica de 5 piezas', 800.00),
('Violín', 'Violín de madera maciza hecho a mano', 500.00),
('Sintetizador', 'Sintetizador analógico con 61 teclas', 700.00),
('Micrófono de estudio', 'Micrófono de condensador para grabación profesional', 250.00),
('Amplificador de guitarra', 'Amplificador de tubo de 50 watts', 600.00),
('Mesa de mezclas', 'Consola de mezclas digital de 16 canales', 1500.00),
('Saxofón alto', 'Saxofón alto de latón con estuche', 1100.00),
('Ukelele', 'Ukelele soprano de caoba', 80.00);
