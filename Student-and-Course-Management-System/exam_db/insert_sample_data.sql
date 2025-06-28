USE exam_db;

-- Exams
INSERT INTO Exams (CourseID, ExamDate, TotalMarks) VALUES
(201, '2025-06-15', 100),
(202, '2025-06-16', 100);

-- Results
INSERT INTO Results (ExamID, StudentID, MarksObtained) VALUES
(1, 1001, 85),
(1, 1002, 92),
(2, 1001, 75),
(2, 1003, 60);

