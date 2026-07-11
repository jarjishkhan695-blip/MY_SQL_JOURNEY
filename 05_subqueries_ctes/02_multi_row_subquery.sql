-- Multi-row subquery

USE sql_journey;

-- Find students enrolled in courses that exist in the courses table.
SELECT first_name, last_name, course
FROM students
WHERE course IN (
    SELECT course_name
    FROM courses
);

-- Find courses with fees above 3000 and then show matching students.
SELECT first_name, last_name, course
FROM students
WHERE course IN (
    SELECT course_name
    FROM courses
    WHERE fee > 3000
);
