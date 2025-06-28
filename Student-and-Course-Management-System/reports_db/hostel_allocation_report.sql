USE reports_db;

CREATE OR REPLACE VIEW Hostel_Allocation_Report AS
SELECT 
    sh.StudentID,
    h.HostelName,
    r.RoomNumber
FROM hostel_db.Student_Hostel sh
JOIN hostel_db.Hostels h ON sh.HostelID = h.HostelID
JOIN hostel_db.Rooms r ON sh.RoomID = r.RoomID;
