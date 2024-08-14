CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL
);

INSERT INTO productos (nombre, descripcion, precio) VALUES
('Laptop', 'Portátil de alto rendimiento', 999.99),
('Smartphone', 'Teléfono inteligente con cámara de alta resolución', 599.99),
('Audífonos', 'Audífonos inalámbricos con cancelación de ruido', 199.99),
('Tablet', 'Tablet con pantalla de 10 pulgadas', 299.99),
('Monitor', 'Monitor 4K de 27 pulgadas', 349.99);
