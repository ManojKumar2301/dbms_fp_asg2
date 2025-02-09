-- Create a bank_accounts(account_id, customer_name, balance) table. 
CREATE TABLE bank_accounts (
    account_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    balance DECIMAL(10, 2) CHECK (balance >= 0)
);

-- Insert values in bank_accounts
INSERT INTO bank_accounts (customer_name, balance) VALUES
('Manoj', 1000.00),
('Koti', 500.00), 
('Vinay', 700.00);

SELECT * FROM bank_accounts;

BEGIN;

-- Deduct $100 from one account.
UPDATE bank_accounts 
SET balance = balance - 100 
WHERE account_id = 1;

-- Add $100 to another.
UPDATE bank_accounts 
SET balance = balance + 100 
WHERE account_id = 2;

COMMIT;

-- Ensure both updates occur inside a transaction.
SELECT * FROM bank_accounts;

--Assignment 8:Handling Failures with Transcations

START TRANSACTION;

-- Deduct 100 from Manoj's account (account_id = 1)
UPDATE bank_accounts 
SET balance = balance - 100 
WHERE account_id = 1;

-- Add amount to non existing account (account_id = 99)
UPDATE bank_accounts 
SET balance = balance + 100 
WHERE account_id = 52;

-- Before ROLLBACK
SELECT * FROM bank_accounts ORDER BY account_id;

ROLLBACK;
-- After ROLLBACK
SELECT * FROM bank_accounts ORDER BY account_id;
