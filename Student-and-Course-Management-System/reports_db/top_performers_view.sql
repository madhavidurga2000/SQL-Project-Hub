USE reports_db;

CREATE OR REPLACE VIEW Top_Performers AS
SELECT 
    r.StudentID,
    AVG(r.MarksObtained) AS AverageMarks
FROM exam_db.Results r
GROUP BY r.StudentID
HAVING AverageMarks >= 85
ORDER BY AverageMarks DESC;
