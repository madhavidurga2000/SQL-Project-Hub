USE reports_db;

CREATE OR REPLACE VIEW Active_vs_Dropped_Students AS
SELECT 
    StudentID,
    CASE 
        WHEN IsActive = 1 THEN 'Active'
        ELSE 'Dropped'
    END AS Status,
    EnrollmentDate,
    DropDate
FROM university_db.Students;
