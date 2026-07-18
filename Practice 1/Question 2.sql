-- Create an Employee Table With Salary Validation

CREATE TABLE student_db.employees(
employee_id INTEGER PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
department VARCHAR(50) NOT NULL,
salary INTEGER NOT NULL,
employee_status VARCHAR(20) DEFAULT 'Active',

CONSTRAINT employees_salary_check CHECK (salary >=15000)
)