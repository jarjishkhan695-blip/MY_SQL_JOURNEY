-- Common Table Expression

USE sql_journey;

-- CTEs make complex queries easier to read.
WITH course_summary AS (
    SELECT
        course,
        COUNT(*) AS total_students,
        AVG(marks) AS average_marks
    FROM students
    GROUP BY course
)
SELECT *
FROM course_summary
WHERE average_marks > 75;
