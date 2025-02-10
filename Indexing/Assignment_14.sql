-- Assignment 14: Creating and Using Indexes.
-- Create a table large_dataset(id, name, value)
CREATE TABLE large_dataset (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    value INT NOT NULL
);

INSERT INTO large_dataset (name, value)
SELECT 
    md5(random()::TEXT), 
    floor(random() * 1000)::INT  
FROM generate_series(1, 1000000);

SELECT * FROM large_dataset;

EXPLAIN ANALYZE 
SELECT * FROM large_dataset 
WHERE name = 'value';

-- Create an index on the name column and run the query again.
CREATE INDEX idx_large_dataset_name ON large_dataset (name);


SELECT * FROM large_dataset 
WHERE name = 'value';


