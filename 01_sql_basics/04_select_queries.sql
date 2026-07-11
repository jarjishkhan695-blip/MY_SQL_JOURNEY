-- SELECT queries

USE sql_journey;

-- Select all columns
SELECT * FROM students;

-- Select specific columns
SELECT first_name, last_name, course FROM students;

-- Rename output columns using aliases
SELECT
    first_name AS name,
    course AS enrolled_course,
    marks AS score
FROM students;

-- Select all courses
SELECT * FROM courses;
