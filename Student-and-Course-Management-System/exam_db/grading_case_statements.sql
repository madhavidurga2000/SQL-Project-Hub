USE exam_db;

CREATE OR REPLACE VIEW Results_Grades AS
SELECT 
    ResultID,
    ExamID,
    StudentID,
    MarksObtained,
    CASE 
        WHEN MarksObtained >= 90 THEN 'A+'
        WHEN MarksObtained >= 80 THEN 'A'
        WHEN MarksObtained >= 70 THEN 'B+'
        WHEN MarksObtained >= 60 THEN 'B'
        WHEN MarksObtained >= 50 THEN 'C'
        WHEN MarksObtained >= 40 THEN 'D'
        ELSE 'F'
    END AS Grade
FROM Results;
