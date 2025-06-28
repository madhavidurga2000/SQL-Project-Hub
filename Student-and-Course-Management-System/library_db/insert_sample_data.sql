USE library_db;

-- Books
INSERT INTO Books (Title, Author, Genre, PublishedYear, AvailableCopies) VALUES
('Database Systems', 'Elmasri', 'Education', 2016, 4),
('Python Programming', 'Zed Shaw', 'Education', 2019, 3),
('Inferno', 'Dan Brown', 'Fiction', 2013, 2);

-- Issue Log
INSERT INTO Issue_Log (StudentID, BookID, IssueDate, ReturnDate) VALUES
(1001, 1, '2025-06-01', '2025-06-10'),
(1002, 2, '2025-06-05', NULL),
(1003, 3, '2025-06-07', NULL);

-- Fine Records
INSERT INTO Fine_Records (IssueID, FineAmount, Paid) VALUES
(1, 10.00, TRUE),
(2, 5.00, FALSE);
