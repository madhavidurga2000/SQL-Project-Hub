USE reports_db;

CREATE OR REPLACE VIEW Attendance_Summary AS
SELECT 
    StudentID,
    CourseID,
    COUNT(*) AS TotalClasses,
    SUM(CASE WHEN Status = 'Present' THEN 1 ELSE 0 END) AS TotalPresent,
    ROUND((SUM(CASE WHEN Status = 'Present' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS AttendancePercentage
FROM attendance_db.Attendance
GROUP BY StudentID, CourseID;
