USE library_db;

CREATE TABLE IF NOT EXISTS Issue_Log (
    IssueID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    BookID INT NOT NULL,
    IssueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
