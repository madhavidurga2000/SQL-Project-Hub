CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    dob DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    dept_id INT,
    status ENUM('Active', 'Dropped') DEFAULT 'Active',
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
