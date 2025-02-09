-- Assignment 12: One-to-Many Relationship in PostgreSQL
-- Create a customers(customer_id, name, email) table.
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create an orders(order_id, customer_id, order_date) table. 
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id) ON DELETE CASCADE,
    order_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Insert Customers
INSERT INTO customers (name, email) VALUES
    ('Manoj', 'manoj@gmail.com'),
    ('Koti', 'koti@gmail.com');

-- Insert Orders 
INSERT INTO orders (customer_id, order_date) VALUES
    (1, '2024-02-01'),
    (1, '2024-02-05'),
    (2, '2024-02-07');

-- Establish a one-to-many relationship.
SELECT * FROM customers;
SELECT * FROM orders;

-- Write a query to get all orders for a given customer.
SELECT o.order_id, o.order_date, c.name, c.email
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_id = 1;

