CREATE DATABASE IF NOT EXISTS delivery_db;
USE delivery_db;

-- Table for shipping/delivery partners
CREATE TABLE Shipping_Partners (
    partner_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Table to track delivery status of each order
CREATE TABLE Delivery_Status (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    partner_id INT,
    shipped_date DATE,
    expected_delivery DATE,
    actual_delivery DATE,
    delivery_status ENUM('Pending', 'Shipped', 'In Transit', 'Delivered', 'Delayed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (partner_id) REFERENCES Shipping_Partners(partner_id)
);
