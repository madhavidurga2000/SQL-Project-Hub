USE fees_db;

-- Sample Payments
INSERT INTO Payments (student_id, amount, payment_date, method, reference_number)
VALUES
(101, 5000.00, '2025-06-01', 'Online', 'TXN001'),
(102, 3000.00, '2025-06-02', 'Cash', 'TXN002'),
(103, 4500.00, '2025-06-03', 'Card', 'TXN003');

-- Sample Scholarships
INSERT INTO Scholarships (student_id, scholarship_name, amount, awarded_date, status)
VALUES
(101, 'Merit Scholarship', 2000.00, '2025-05-15', 'Active'),
(102, 'Sports Excellence', 1500.00, '2025-04-20', 'Active');

-- Sample Penalties
INSERT INTO Penalties (student_id, reason, penalty_amount, issued_date, status)
VALUES
(103, 'Late Payment', 500.00, '2025-06-10', 'Pending'),
(101, 'Library Fine', 200.00, '2025-06-12', 'Paid');
