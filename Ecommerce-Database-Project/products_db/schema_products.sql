-- Create database
CREATE DATABASE IF NOT EXISTS products_db;
USE products_db;

-- 🔹 1. Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- 🔹 2. Vendors Table
CREATE TABLE Vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100)
);

-- 🔹 3. Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    vendor_id INT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);

-- 🔹 4. Coupons Table
CREATE TABLE Coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    coupon_code VARCHAR(50) NOT NULL,
    discount_percent DECIMAL(5, 2),
    valid_from DATE,
    valid_to DATE
);
-- 🔹 5. Product History Table (for triggers or price tracking)
CREATE TABLE Product_History (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    old_price DECIMAL(10, 2),
    new_price DECIMAL(10, 2),
    change_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- 🔹 6. Product Images Table (for image storage)
CREATE TABLE Product_Images (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- 🔹 7. Product Tags + Mapping Table (for advanced filters)
CREATE TABLE Product_Tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(50)
);

CREATE TABLE Product_Tag_Map (
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (tag_id) REFERENCES Product_Tags(tag_id)
);
