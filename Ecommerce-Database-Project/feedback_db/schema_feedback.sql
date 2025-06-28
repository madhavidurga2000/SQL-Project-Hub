CREATE DATABASE IF NOT EXISTS feedback_db;
USE feedback_db;

-- 📝 Table for product reviews
CREATE TABLE Product_Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATE DEFAULT CURRENT_DATE
);

-- 🎫 Table for customer support tickets
CREATE TABLE Customer_Support_Tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    issue_category VARCHAR(100),
    issue_description TEXT,
    ticket_status ENUM('Open', 'In Progress', 'Resolved', 'Closed') DEFAULT 'Open',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    resolved_at DATETIME
);
