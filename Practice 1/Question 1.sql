-- Create a Student Management Table

CREATE TABLE student_db.students(
student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(100) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
age INTEGER CHECK (age BETWEEN 16 AND 30),
course VARCHAR(50) NOT NULL,
admission_date DATETIME DEFAULT (CURRENT_DATE)
)