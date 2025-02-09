-- Assignment 3: Using RIGHT JOIN
-- Write a RIGHT JOIN query to list all courses along with the students enrolled. Ensure courses with no students also appear.
SELECT students.student_id, students.name, courses.course_name
FROM students
RIGHT JOIN courses ON students.student_id = courses.student_id;
