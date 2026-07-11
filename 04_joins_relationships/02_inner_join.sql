-- INNER JOIN

USE sql_journey;

-- INNER JOIN returns only matching records from both tables.
SELECT
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id;
