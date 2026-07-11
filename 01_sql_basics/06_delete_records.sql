-- Deleting records safely

USE sql_journey;

-- Always check the record first.
SELECT * FROM students
WHERE student_id = 5;

-- Use WHERE with DELETE. Without WHERE, every row can be deleted.
DELETE FROM students
WHERE student_id = 5;

SELECT * FROM students;
