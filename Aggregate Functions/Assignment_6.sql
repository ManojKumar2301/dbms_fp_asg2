-- Product data analysis
-- Create a table products(product_id, category, price, stock_quantity).
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) CHECK (price > 0),
    stock_quantity INT CHECK (stock_quantity >= 0)
);

-- Insert values in products. 
INSERT INTO products (category, price, stock_quantity) 
VALUES
    ('Electronics', 1500.00, 10),
    ('Electronics', 1200.00, 8),
    ('Furniture', 800.00, 5),
    ('Furniture', 400.00, 7),
    ('Clothing', 250.00, 20),
    ('Clothing', 150.00, 15);

SELECT * FROM products;

-- Query to Find the Most Expensive Product. 
SELECT * FROM products ORDER BY price DESC LIMIT 1;

-- Query to Calculate Total Stock Value.
SELECT SUM(price * stock_quantity) AS total_stock_value FROM products;

-- Query to Find the Average Product Price Per Category
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
ORDER BY category;

