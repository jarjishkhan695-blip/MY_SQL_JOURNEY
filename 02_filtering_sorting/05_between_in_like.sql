-- BETWEEN, IN, and LIKE

USE sql_journey;

-- Marks between 70 and 90
SELECT * FROM students
WHERE marks BETWEEN 70 AND 90;

-- Students from selected cities
SELECT * FROM students
WHERE city IN ('Mumbai', 'Pune', 'Delhi');

-- Names starting with A
SELECT * FROM students
WHERE first_name LIKE 'A%';

-- Names containing a
SELECT * FROM students
WHERE first_name LIKE '%a%';
