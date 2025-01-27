CREATE DATABASE IF NOT EXISTS employees;
USE employees;

CREATE TABLE IF NOT EXISTS employee(
emp_id VARCHAR(20),
first_name VARCHAR(20),
last_name VARCHAR(20),
primary_skill VARCHAR(20),
location VARCHAR(20));

-- Insert into employee table if the record does not already exist
INSERT INTO employee (emp_id, first_name, last_name, primary_skill, location)
SELECT '1', 'Amanda', 'Williams', 'Smile', 'local'
WHERE NOT EXISTS (
    SELECT 1 FROM employee WHERE emp_id = '1'
);

INSERT INTO employee (emp_id, first_name, last_name, primary_skill, location)
SELECT '2', 'Alan', 'Williams', 'Empathy', 'alien'
WHERE NOT EXISTS (
    SELECT 1 FROM employee WHERE emp_id = '2'
);

-- Display the table contents
SELECT * FROM employee;
