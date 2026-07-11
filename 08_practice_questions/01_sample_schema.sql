-- Practice schema

CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_name, city, signup_date)
VALUES
('Aman Khan', 'Mumbai', '2026-01-10'),
('Sara Shaikh', 'Pune', '2026-02-15'),
('Rohan Mehta', 'Delhi', '2026-03-20'),
('Neha Patel', 'Mumbai', '2026-04-05');

INSERT INTO products (product_name, category, price)
VALUES
('Laptop', 'Electronics', 55000.00),
('Mouse', 'Electronics', 700.00),
('Notebook', 'Stationery', 80.00),
('Pen', 'Stationery', 20.00);

INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 1, '2026-05-01'),
(1, 2, 2, '2026-05-03'),
(2, 3, 5, '2026-05-05'),
(3, 1, 1, '2026-05-07'),
(4, 4, 10, '2026-05-09');
