-- Correlated subquery

USE sql_journey;

-- Find students whose marks are greater than the average marks of their own course.
SELECT
    s1.first_name,
    s1.last_name,
    s1.course,
    s1.marks
FROM students AS s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM students AS s2
    WHERE s2.course = s1.course
);
