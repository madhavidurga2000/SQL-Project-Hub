USE attendance_db;

CREATE TABLE IF NOT EXISTS Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    AttendanceDate DATE NOT NULL,
    Status ENUM('Present', 'Absent', 'Late') NOT NULL
);
