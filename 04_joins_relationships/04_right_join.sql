-- RIGHT JOIN

USE sql_journey;

-- RIGHT JOIN returns all records from the right table
-- and matching records from the left table.
SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department_id = d.department_id;
