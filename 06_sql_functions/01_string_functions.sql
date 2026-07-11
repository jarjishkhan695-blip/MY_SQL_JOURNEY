-- String functions

USE sql_journey;

SELECT
    first_name,
    UPPER(first_name) AS upper_name,
    LOWER(first_name) AS lower_name,
    LENGTH(first_name) AS name_length,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM students;
