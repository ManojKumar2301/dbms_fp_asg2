-- Assignment 4: Employee Analysis
-- Create a table employees(employee_id, name, department, salary).
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) CHECK (salary > 0)
);

-- Insert values in employees
INSERT INTO employees (name, department, salary) 
VALUES
    ('Manoj', 'IT', 60000),
    ('Koti', 'IT', 65000),
    ('Vinay', 'IT', 70000),
    ('Archana', 'IT', 62000),
    ('Ishika', 'IT', 68000),
    ('Sandhya', 'IT', 68000),
    ('Muskan', 'HR', 72000),
    ('Laiba', 'HR', 50000);

-- Write a GROUP BY query to find the total number of employees per department.
SELECT department, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department;

-- Modify the query to only show departments where the employee count is more than 5 (HAVING clause).
SELECT department, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(employee_id) > 5;



