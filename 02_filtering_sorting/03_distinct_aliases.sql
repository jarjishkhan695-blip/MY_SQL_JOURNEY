-- DISTINCT and aliases

USE sql_journey;

-- Get unique cities
SELECT DISTINCT city
FROM students;

-- Get unique courses
SELECT DISTINCT course
FROM students;

-- Use aliases for clean output
SELECT
    first_name AS firstName,
    last_name AS lastName,
    marks AS totalMarks
FROM students;
