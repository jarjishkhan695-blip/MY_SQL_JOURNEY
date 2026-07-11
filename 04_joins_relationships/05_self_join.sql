-- SELF JOIN

USE sql_journey;

-- A self join joins a table with itself.
-- Here, employees are matched with their managers.
SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.employee_id;
