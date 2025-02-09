-- Suppliers Table
CREATE TABLE suppliers (
    SupplierID SERIAL PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL
);

-- Products Table
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT REFERENCES suppliers(SupplierID)
);

-- Insert suppliers
INSERT INTO suppliers (SupplierID, SupplierName) VALUES
    (201, 'FreshFarms');

-- Insert products 
INSERT INTO products (ProductID, ProductName, SupplierID) VALUES
    (101, 'Apples', 201);

SELECT * FROM suppliers;

SELECT * FROM products;

SELECT p.ProductID, p.ProductName, s.SupplierName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID;

