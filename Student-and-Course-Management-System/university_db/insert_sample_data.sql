USE university_db;

-- Insert Departments
INSERT INTO Departments (dept_name, building) VALUES
('Computer Science', 'Block A'),
('Electronics', 'Block B'),
('Mechanical', 'Block C'),
('Civil', 'Block D');

-- Insert Courses
INSERT INTO Courses (course_name, credits, dept_id) VALUES
('Database Systems', 4, 1),
('Operating Systems', 3, 1),
('Digital Electronics', 3, 2),
('Thermodynamics', 4, 3),
('Structural Analysis', 3, 4),
('Data Structures', 3, 1);

-- Insert Instructors
INSERT INTO Instructors (name, email, dept_id) VALUES
('Dr. Anjali Rao', 'anjali@univ.edu', 1),
('Mr. Rakesh Kumar', 'rakesh@univ.edu', 2),
('Dr. Veena Nair', 'veena@univ.edu', 3);

-- Insert Students
INSERT INTO Students (name, gender, dob, email, phone, dept_id, status) VALUES
('Aarav Sharma', 'Male', '2002-05-15', 'aarav@stu.edu', '9876543210', 1, 'Active'),
('Meera Nair', 'Female', '2001-12-22', 'meera@stu.edu', '9876500011', 1, 'Active'),
('Rahul Verma', 'Male', '2000-08-10', 'rahul@stu.edu', '9876511223', 2, 'Dropped'),
('Sneha Joshi', 'Female', '2003-03-18', 'sneha@stu.edu', '9876599988', 3, 'Active'),
('Kiran Patil', 'Male', '2002-11-09', 'kiran@stu.edu', '9876567890', 4, 'Active'),
('Priya Iyer', 'Female', '2001-07-05', 'priya@stu.edu', '9876534567', 1, 'Active');

-- Insert Enrollment Records
INSERT INTO Enrollment (student_id, course_id, semester) VALUES
(1, 1, 'Sem-5'),  -- Aarav → DBMS
(1, 2, 'Sem-5'),  -- Aarav → OS
(2, 1, 'Sem-5'),  -- Meera → DBMS
(2, 6, 'Sem-5'),  -- Meera → Data Structures
(3, 3, 'Sem-6'),  -- Rahul → Digital Electronics (Dropped)
(4, 4, 'Sem-4'),  -- Sneha → Thermodynamics
(5, 5, 'Sem-5'),  -- Kiran → Structural Analysis
(6, 6, 'Sem-5');  -- Priya → Data Structures
