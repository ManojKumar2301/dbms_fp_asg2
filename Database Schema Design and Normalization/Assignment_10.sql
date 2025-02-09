-- Assignment 10: Applying Second Normal Form (2NF)
-- Apply 2NF by splitting into appropriate tables.
-- Orders Table 
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- Products Table 
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL
);

-- Order_Products Table
CREATE TABLE order_products (
    OrderID INT REFERENCES orders(OrderID),
    ProductID INT REFERENCES products(ProductID),
    PRIMARY KEY (OrderID, ProductID)  -- Composite key
);

-- Insert customers/orders
INSERT INTO orders (OrderID, CustomerName) VALUES
    (1, 'Alice');

-- Insert products
INSERT INTO products (ProductID, ProductName) VALUES
    (101, 'Apples'),
    (102, 'Oranges');

-- Link orders and products
INSERT INTO order_products (OrderID, ProductID) VALUES
    (1, 101),
    (1, 102);

-- Retrieve all orders with product details
SELECT o.OrderID, o.CustomerName, p.ProductName
FROM orders o
JOIN order_products op ON o.OrderID = op.OrderID
JOIN products p ON op.ProductID = p.ProductID;

