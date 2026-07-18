-- Build a College Database

CREATE DATABASE IF NOT EXISTS college_db;
USE college_db;
CREATE TABLE departments (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL,
hod_name VARCHAR(100) NOT NULL,

CONSTRAINT departments_name_unique
UNIQUE (department_name)
);

CREATE TABLE students (
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(100) NOT NULL,
email VARCHAR(255) NOT NULL,
age INT,
department_id INT,
admission_date DATE DEFAULT (CURRENT_DATE),

CONSTRAINT students_email_unique
UNIQUE (email),

CONSTRAINT students_age_check
CHECK (age BETWEEN 16 AND 30),

CONSTRAINT students_department_fk
FOREIGN KEY (department_id)
REFERENCES departments(department_id)
);

TRUNCATE TABLE students;