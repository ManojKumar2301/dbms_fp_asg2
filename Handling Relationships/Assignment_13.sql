-- Create Students Table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
-- Assignment 13: Many-to-Many Relationship
-- Create Courses Table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

-- Create a junction table student_courses(student_id, course_id).
CREATE TABLE student_courses (
    student_id INT REFERENCES students(student_id) ON DELETE CASCADE,
    course_id INT REFERENCES courses(course_id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, course_id)  -- Composite Primary Key
);

-- Insert Students
INSERT INTO students (name) VALUES
    ('Manoj'),
    ('Koti'),
    ('Vinay');

-- Insert Courses
INSERT INTO courses (course_name) VALUES
    ('Mathematics'),
    ('Physics'),
    ('Computer Science');

-- Insert Students in Courses
INSERT INTO student_courses (student_id, course_id) VALUES
    (1, 1),  
    (1, 2),  
    (2, 1), 
    (3, 3);
    
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM student_courses;

-- Write a query to find all students taking a specific course. 
SELECT s.student_id, s.name, c.course_name
FROM students s
JOIN student_courses sc ON s.student_id = sc.student_id
JOIN courses c ON sc.course_id = c.course_id
WHERE c.course_name = 'Mathematics';


