-- ORDER BY and LIMIT

USE sql_journey;

-- Sort students by marks from highest to lowest
SELECT first_name, last_name, marks
FROM students
ORDER BY marks DESC;

-- Sort students by age from youngest to oldest
SELECT first_name, last_name, age
FROM students
ORDER BY age ASC;

-- Get top 3 students by marks
SELECT first_name, last_name, marks
FROM students
ORDER BY marks DESC
LIMIT 3;
