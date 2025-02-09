-- Assignment 5: Sales Summary
-- Create a table sales(sale_id, customer_id, amount, sale_date).
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    amount DECIMAL(10, 2) CHECK (amount > 0),
    sale_date DATE NOT NULL
);

-- Insert values in sales
INSERT INTO sales (customer_id, amount, sale_date) 
VALUES
    (1, 550.00, '2024-01-10'),
    (2, 750.00, '2024-02-15'),
    (3, 900.00, '2024-03-20'),
    (4, 620.00, '2024-04-05'),
    (5, 480.00, '2024-05-12'),
    (6, 1020.00, '2024-06-25');

SELECT * FROM sales;

--Write a query to calculate the total sales per month.
SELECT TO_CHAR(sale_date, 'YYYY-MM') AS sale_month, SUM(amount) AS total_sales
FROM sales
GROUP BY sale_month
ORDER BY sale_month;

--Write a query to calculate the average sale amount per customer.
SELECT customer_id, AVG(amount) AS average_sale_amount
FROM sales
GROUP BY customer_id
ORDER BY customer_id;

