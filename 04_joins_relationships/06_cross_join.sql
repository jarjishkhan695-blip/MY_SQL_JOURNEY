-- CROSS JOIN

USE sql_journey;

-- CROSS JOIN creates every possible combination between two tables.
-- Use it carefully because output size can become large.
SELECT
    s.first_name,
    c.course_name
FROM students AS s
CROSS JOIN courses AS c;
