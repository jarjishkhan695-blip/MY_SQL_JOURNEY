-- Creating tables

USE sql_journey;

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(50),
    course VARCHAR(100),
    marks INT
);

CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fee DECIMAL(10, 2)
);

-- DESCRIBE shows the structure of a table.
DESCRIBE students;
DESCRIBE courses;
