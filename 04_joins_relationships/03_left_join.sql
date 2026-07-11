-- LEFT JOIN

USE sql_journey;

-- LEFT JOIN returns all records from the left table
-- and matching records from the right table.
SELECT
    d.department_name,
    e.employee_name,
    e.salary
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id;
