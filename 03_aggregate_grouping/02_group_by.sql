-- GROUP BY

USE sql_journey;

-- Count students in each course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- Average marks by course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

-- Count students by city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;
