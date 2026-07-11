-- Window functions

USE sql_journey;

-- Window functions perform calculations across rows without collapsing rows like GROUP BY.

SELECT
    first_name,
    last_name,
    course,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS overall_rank
FROM students;

SELECT
    first_name,
    last_name,
    course,
    marks,
    RANK() OVER (PARTITION BY course ORDER BY marks DESC) AS course_rank
FROM students;
