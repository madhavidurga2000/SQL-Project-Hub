USE fees_db;

CREATE TABLE IF NOT EXISTS Scholarships (
    scholarship_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    scholarship_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    awarded_date DATE NOT NULL,
    status ENUM('Active', 'Expired', 'Revoked') DEFAULT 'Active',

    UNIQUE (student_id, scholarship_name),
    INDEX (student_id)
);
