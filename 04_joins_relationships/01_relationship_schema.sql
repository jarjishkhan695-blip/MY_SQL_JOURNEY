-- Relationship schema for joins

USE sql_journey;

CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_name)
VALUES
('Engineering'),
('Sales'),
('HR'),
('Finance');

INSERT INTO employees (employee_name, salary, manager_id, department_id)
VALUES
('Amit', 60000.00, NULL, 1),
('Sara', 45000.00, 1, 1),
('Rohan', 40000.00, 1, 2),
('Neha', 38000.00, 3, 2),
('Karan', 35000.00, NULL, 3);

SELECT * FROM departments;
SELECT * FROM employees;
