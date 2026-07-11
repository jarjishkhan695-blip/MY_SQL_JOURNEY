-- Inserting records into tables

USE sql_journey;

INSERT INTO students (first_name, last_name, age, city, course, marks)
VALUES
('Aman', 'Khan', 20, 'Mumbai', 'Python', 85),
('Sara', 'Shaikh', 21, 'Pune', 'SQL', 91),
('Rohan', 'Mehta', 19, 'Delhi', 'Python', 72),
('Neha', 'Patel', 22, 'Mumbai', 'Data Analytics', 88),
('Arjun', 'Nair', 20, 'Bangalore', 'SQL', 65);

INSERT INTO courses (course_name, duration_months, fee)
VALUES
('Python', 3, 4999.00),
('SQL', 2, 2999.00),
('Data Analytics', 4, 8999.00);

SELECT * FROM students;
SELECT * FROM courses;
