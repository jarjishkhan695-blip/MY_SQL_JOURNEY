-- Views

USE sql_journey;

-- A view is a saved query.
CREATE OR REPLACE VIEW student_performance AS
SELECT
    student_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    course,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance
FROM students;

SELECT * FROM student_performance;
