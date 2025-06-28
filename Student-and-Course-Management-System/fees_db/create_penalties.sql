USE fees_db;

CREATE TABLE IF NOT EXISTS Penalties (
    penalty_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    reason VARCHAR(255) NOT NULL,
    penalty_amount DECIMAL(10,2) NOT NULL CHECK (penalty_amount > 0),
    issued_date DATE NOT NULL,
    status ENUM('Pending', 'Paid') DEFAULT 'Pending',

    INDEX (student_id)
);
