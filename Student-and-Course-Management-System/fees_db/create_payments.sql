USE fees_db;

CREATE TABLE IF NOT EXISTS Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    payment_date DATE NOT NULL,
    method ENUM('Cash', 'Card', 'Online', 'Bank Transfer') NOT NULL,
    reference_number VARCHAR(50) UNIQUE,

    -- Optional FK reference to a Students table in university_db if you later link cross-db
    -- FOREIGN KEY (student_id) REFERENCES university_db.Students(student_id)
    
    INDEX (student_id)
);
