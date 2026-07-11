-- Logical operators: AND, OR, NOT

USE sql_journey;

-- Students from Mumbai with marks greater than 80
SELECT * FROM students
WHERE city = 'Mumbai' AND marks > 80;

-- Students from Mumbai or Pune
SELECT * FROM students
WHERE city = 'Mumbai' OR city = 'Pune';

-- Students not enrolled in Python
SELECT * FROM students
WHERE NOT course = 'Python';
