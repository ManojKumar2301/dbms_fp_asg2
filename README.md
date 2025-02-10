# Advanced SQL & Database Schema Design - Exercises

This document contains exercises designed to reinforce the concepts learned in **Advanced SQL Queries, Transactions & ACID, Database Schema Design, Normalization, and Indexing**. Completing these assignments will help you develop a deeper understanding of database management.

## **1. Joins**
### **Assignment 1: Using INNER JOIN**
- Create two tables: `students(student_id, name, age)` and `courses(course_id, course_name, student_id)`.
- Write an `INNER JOIN` query to fetch students along with the courses they are enrolled in.
- Modify the query to return only students enrolled in the **Mathematics** course.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=60b7f8e6-4792-4c48-9c41-18b17989faf9)

### **Assignment 2: Using LEFT JOIN**
- Modify the previous example to ensure **all students appear**, even those not enrolled in any course.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=60b7f8e6-4792-4c48-9c41-18b17989faf9)

### **Assignment 3: Using RIGHT JOIN**
- Write a `RIGHT JOIN` query to list all courses along with the students enrolled.
- Ensure courses with **no students** also appear.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=60b7f8e6-4792-4c48-9c41-18b17989faf9)

---

## **2. Grouping and Aggregation**
### **Assignment 4: Employee Analysis**
- Create a table `employees(employee_id, name, department, salary)`.
- Write a `GROUP BY` query to find the **total number of employees per department**.
- Modify the query to show only departments where the employee count is **more than 5** (`HAVING` clause).

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=72c852dc-0772-4233-9e77-14d905373386)

### **Assignment 5: Sales Summary**
- Create a table `sales(sale_id, customer_id, amount, sale_date)`.
- Write queries to:
  - Calculate **total sales per month**.
  - Find **average sale amount per customer**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=d857fbe6-41ca-441e-b328-540dbf9be426)

---

## **3. Aggregate Functions**
### **Assignment 6: Product Data Analysis**
- Create a table `products(product_id, category, price, stock_quantity)`.
- Write queries to:
  - Find the **most expensive product**.
  - Calculate the **total stock value** (`SUM(price * stock_quantity)`).
  - Find the **average product price per category**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=d40fd8e4-86f3-4604-8ca5-d5003ac80bb6)

---

## **4. Transactions and ACID Properties**
### **Assignment 7: Banking Transactions**
- Create a `bank_accounts(account_id, customer_name, balance)` table.
- Simulate a **money transfer** between two accounts:
  - Deduct **$100** from one account.
  - Add **$100** to another.
  - Ensure both updates occur **inside a transaction**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=df4657cf-9336-4ae3-b802-77ea503378a9)

### **Assignment 8: Handling Failures with Transactions**
- Modify the previous assignment to **introduce an intentional error** in step 2.
- Use **ROLLBACK** to ensure **data consistency**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=df4657cf-9336-4ae3-b802-77ea503378a9)

---

## **5. Database Schema Design and Normalization**
### **Assignment 9: Fixing a Poorly Designed Database (1NF)**
- Transform the given unnormalized table into **First Normal Form (1NF)**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=dd98e3ac-81cd-4d96-95d0-2874d15ededa)

### **Assignment 10: Applying Second Normal Form (2NF)**
- Apply **2NF** by splitting the given table into appropriate tables.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=6c573662-9557-4d7b-9772-81ed8a526f62)

### **Assignment 11: Applying Third Normal Form (3NF)**
- Apply **3NF** by ensuring **no transitive dependencies exist**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=6a3181a2-0989-42a9-ad2c-8d6dfd82d050)

---

## **6. Handling Relationships**
### **Assignment 12: One-to-Many Relationship**
- Create `customers(customer_id, name, email)` and `orders(order_id, customer_id, order_date)`.
- Establish a **one-to-many relationship**.
- Write a query to **get all orders for a given customer**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=01a4a3b7-cbdc-495a-acb1-9035f540a797)

### **Assignment 13: Many-to-Many Relationship**
- Define a **many-to-many relationship** between students and courses.
- Create a **junction table** `student_courses(student_id, course_id)`.
- Write a query to **find all students taking a specific course**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=4f11dafe-65c0-47a2-bff4-8ff92bafe714)

---

## **7. Indexing**
### **Assignment 14: Creating and Using Indexes**
- Create a table `large_dataset(id, name, value)` with **1000 rows**.
- Run a `SELECT WHERE` query **without an index** and measure time.
- Create an **index on the `name` column** and rerun the query.
- Compare the **performance improvements**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=5d79fb52-1918-4baf-85ed-b3155271638a) 

### **Assignment 15: Unique Index for Data Integrity**
- Create a `users(user_id, username, email)` table.
- Ensure `username` and `email` fields have **unique indexes**.
- Attempt inserting **duplicate usernames and emails**.
- Observe how the database **enforces uniqueness**.

SQL Fiddle: [Click Here](https://sqlfiddle.com/postgresql/online-compiler?id=f22f41df-81a7-4e92-82ff-8d59d300bab9)




