-- Assignment 9: Fixing a Poorly Designed Database
CREATE TABLE orders_unnormalized (
    OrderID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100),
    Products TEXT 
);

INSERT INTO orders_unnormalized (CustomerName, Products) 
VALUES 
    ('Alice', 'Apples, Oranges'),
    ('Bob', 'Bananas');

SELECT * FROM orders_unnormalized;

CREATE TABLE orders (
    OrderID SERIAL,  
    CustomerName VARCHAR(100) NOT NULL,
    Product VARCHAR(50) NOT NULL,
    PRIMARY KEY (OrderID, Product)
);

INSERT INTO orders (OrderID, CustomerName, Product) VALUES
    (1, 'Alice', 'Apples'),
    (1, 'Alice', 'Oranges'),
    (2, 'Bob', 'Bananas');

SELECT * FROM orders;
