-- WHERE clause

USE sql_journey;

-- Students from Mumbai
SELECT * FROM students
WHERE city = 'Mumbai';

-- Students with marks greater than 80
SELECT * FROM students
WHERE marks > 80;

-- Students enrolled in SQL
SELECT first_name, last_name, course
FROM students
WHERE course = 'SQL';
