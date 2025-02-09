-- Assignment 15: Unique Index for Data Integrity
-- Create Users Table with Unique Constraints
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Insert Users
INSERT INTO users (username, email) VALUES
    ('Manoj', 'manoj@gmail.com'),
    ('Koti', 'koti@gmail.com');

-- Create Unique Index on username
CREATE UNIQUE INDEX unique_username ON users (username);

-- Create Unique Index on email
CREATE UNIQUE INDEX unique_email ON users (email);

SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'users';

SELECT * FROM users;

INSERT INTO users (username, email) VALUES
    ('Manoj', 'manoj123@gmail.com');


