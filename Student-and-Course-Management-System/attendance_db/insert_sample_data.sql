USE attendance_db;

INSERT INTO Attendance (StudentID, CourseID, AttendanceDate, Status) VALUES
(1001, 201, '2025-06-01', 'Present'),
(1001, 201, '2025-06-02', 'Absent'),
(1001, 201, '2025-06-03', 'Present'),
(1002, 202, '2025-06-01', 'Present'),
(1002, 202, '2025-06-02', 'Late'),
(1002, 202, '2025-06-03', 'Present'),
(1003, 203, '2025-06-01', 'Absent'),
(1003, 203, '2025-06-02', 'Absent'),
(1003, 203, '2025-06-03', 'Present');
