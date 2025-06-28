-- Create the database
CREATE DATABASE IF NOT EXISTS users_db;
USE users_db;

-- Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    registration_date DATE DEFAULT CURRENT_DATE
);

-- Addresses table
CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    address_type ENUM('Shipping', 'Billing') DEFAULT 'Shipping',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- User login history
CREATE TABLE User_Login_History (
    login_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    login_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
