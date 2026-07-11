-- Updating records

USE sql_journey;

-- Always use WHERE with UPDATE unless you intentionally want to update every row.
UPDATE students
SET marks = 95
WHERE student_id = 2;

UPDATE students
SET city = 'Navi Mumbai'
WHERE first_name = 'Aman' AND last_name = 'Khan';

SELECT * FROM students;
