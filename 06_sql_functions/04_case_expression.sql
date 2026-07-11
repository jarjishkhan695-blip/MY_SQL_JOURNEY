-- CASE expression

USE sql_journey;

SELECT
    first_name,
    last_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance
FROM students;
