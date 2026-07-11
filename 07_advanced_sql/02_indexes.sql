-- Indexes

USE sql_journey;

-- Indexes can improve search performance on large tables.
-- Do not create indexes blindly. Indexes speed up reads but can slow down writes.

CREATE INDEX idx_students_course
ON students(course);

CREATE INDEX idx_students_city
ON students(city);

SHOW INDEX FROM students;
