-- Assignment 1: Using INNER JOIN
-- Create two tables: students(student_id, name, age) and courses(course_id, course_name, student_id).
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    student_id INT REFERENCES students(student_id) ON DELETE CASCADE
);

-- Insert values in students, courses.
INSERT INTO students (name, age) 
VALUES 
	('Manoj', 22),
    ('Kiran', 23),
    ('Omsai', 24),
    ('Mohan', 21),
    ('Preethi', 23);

INSERT INTO courses (course_name, student_id) 
VALUES
    ('Mathematics', 1),
    ('Science', 1),
    ('Mathematics', 2),
    ('History', 3),
    ('Mathematics', 4),
    ('Physics', 4);

SELECT * FROM students;
SELECT * FROM courses;

-- Write an INNER JOIN query to fetch students along with the courses they are enrolled in.
SELECT students.student_id, students.name, courses.course_name
FROM students
INNER JOIN courses ON students.student_id = courses.student_id;

-- Modify the query to return only students enrolled in the "Mathematics" course.
SELECT students.student_id, students.name, courses.course_name
FROM students
INNER JOIN courses ON students.student_id = courses.student_id
WHERE courses.course_name = 'Mathematics';
