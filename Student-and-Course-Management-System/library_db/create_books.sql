USE library_db;

CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublishedYear INT,
    AvailableCopies INT DEFAULT 0
);
