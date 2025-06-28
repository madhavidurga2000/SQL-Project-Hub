USE hostel_db;

-- Hostels
INSERT INTO Hostels (hostel_name, type, capacity, warden_name)
VALUES
('Lotus Hostel', 'Girls', 120, 'Sushma Rao'),
('Oak Residency', 'Boys', 150, 'Rajesh Menon'),
('Harmony Hall', 'Co-ed', 200, 'Anita Verma');

-- Rooms
INSERT INTO Rooms (hostel_id, room_number, capacity, is_available)
VALUES
(1, 'G101', 2, TRUE),
(1, 'G102', 2, TRUE),
(2, 'B201', 3, TRUE),
(3, 'C301', 4, TRUE);

-- Student-Hotel Allocations
INSERT INTO Student_Hostel (student_id, room_id, date_of_allocation, expected_checkout, status)
VALUES
(101, 1, '2025-06-01', '2025-12-31', 'Active'),
(102, 2, '2025-06-02', '2025-12-31', 'Active'),
(103, 3, '2025-06-03', '2025-11-30', 'Active');
