-- Assignment 2: Using LEFT JOIN
-- Extend the previous example by ensuring all students appear in the result, even those not enrolled in any course.
SELECT students.student_id, students.name, COALESCE(courses.course_name, 'Not Enrolled') AS course_name
FROM students
LEFT JOIN courses ON students.student_id = courses.student_id;
