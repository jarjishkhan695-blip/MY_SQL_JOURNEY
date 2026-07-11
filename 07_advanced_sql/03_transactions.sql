-- Transactions

USE sql_journey;

-- Transactions allow multiple SQL statements to run as one unit.
-- If something goes wrong, ROLLBACK can undo the changes before COMMIT.

START TRANSACTION;

UPDATE students
SET marks = marks + 5
WHERE course = 'SQL';

SELECT * FROM students
WHERE course = 'SQL';

-- Use COMMIT to permanently save changes.
COMMIT;

-- Use ROLLBACK instead of COMMIT if you want to undo changes before saving.
-- ROLLBACK;
