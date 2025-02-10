-- Assignment 14: Creating and Using Indexes.
-- Create a table large_dataset(id, name, value)
CREATE TABLE large_dataset (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    value INT
);


INSERT INTO large_dataset (name, value)
SELECT
    'Name_' || generate_series(1, 1000), 
    random() * 1000
FROM generate_series(1, 1000);

-- Run a SELECT WHERE query without an index and measure the time taken.

SELECT * FROM large_dataset WHERE name = 'Name_500';

-- 3 milli seconds

CREATE INDEX idx_large_dataset_name ON large_dataset(name);

-- Create an index on the name column and run the query again. 
SELECT * FROM large_dataset WHERE name = 'Name_500'; 

-- 2 milli seconds
