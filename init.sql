CREATE DATABASE IF NOT EXISTS payments;

CREATE DATABASE IF NOT EXISTS products;
USE products;

CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(255),
    available_quantity INT DEFAULT 0,
    price DECIMAL(12, 2) NOT NULL,
    category_id INT,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


INSERT INTO categories (category_id, name, description) VALUES
(1, 'Electrónica', 'Dispositivos electrónicos y gadgets'),
(2, 'Ropa', 'Vestimenta y accesorios'),
(3, 'Hogar', 'Productos para el hogar'),
(4, 'Deportes', 'Artículos deportivos'),
(5, 'Alimentos', 'Productos comestibles');


INSERT INTO products (product_id, available_quantity, description, name, price, category_id) VALUES
(1, 50, 'Smartphone gama media con 128GB', 'Samsung Galaxy A54', 1200000.00, 1),
(2, 30, 'Laptop ligera para trabajo y estudio', 'Lenovo IdeaPad 3', 2500000.00, 1),
(3, 20, 'Audífonos inalámbricos con cancelación de ruido', 'Sony WH-1000XM4', 900000.00, 1),
(4, 100, 'Camiseta básica de algodón', 'Camiseta Blanca', 35000.00, 2),
(5, 60, 'Jeans slim fit azul oscuro', 'Jeans Slim Fit', 120000.00, 2),
(6, 40, 'Chaqueta impermeable', 'Chaqueta Negra', 180000.00, 2),
(7, 25, 'Licuadora de alta potencia', 'Licuadora Oster', 220000.00, 3),
(8, 15, 'Juego de sábanas dobles', 'Sábanas Premium', 150000.00, 3),
(9, 10, 'Silla ergonómica para oficina', 'Silla Ergonómica', 450000.00, 3),
(10, 70, 'Balón de baloncesto profesional', 'Balón Spalding', 95000.00, 4),
(11, 35, 'Mancuernas ajustables 20kg', 'Mancuernas Gym', 300000.00, 4),
(12, 20, 'Guayos para fútbol', 'Guayos Adidas', 200000.00, 4),
(13, 200, 'Arroz blanco 1kg', 'Arroz Diana', 4500.00, 5),
(14, 150, 'Leche entera 1L', 'Leche Alpina', 3500.00, 5),
(15, 80, 'Chocolate en barra', 'Chocolate Corona', 5500.00, 5);