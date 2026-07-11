-- HAVING clause

USE sql_journey;

-- WHERE filters rows before grouping.
-- HAVING filters groups after grouping.

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) >= 2;

SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course
HAVING AVG(marks) > 75;
