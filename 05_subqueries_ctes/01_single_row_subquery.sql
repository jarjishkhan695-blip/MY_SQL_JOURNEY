-- Single-row subquery

USE sql_journey;

-- Find students who scored above the average marks.
SELECT first_name, last_name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);
