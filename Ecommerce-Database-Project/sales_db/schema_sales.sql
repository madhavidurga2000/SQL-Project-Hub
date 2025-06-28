-- Create sales_db
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

-- Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Order Items table
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Payments table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    payment_method ENUM('Credit Card', 'UPI', 'COD', 'Wallet'),
    payment_status ENUM('Success', 'Failed', 'Refunded') DEFAULT 'Success',
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Refunds table
CREATE TABLE Refunds (
    refund_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_id INT,
    refund_date DATE,
    refund_amount DECIMAL(10,2),
    reason TEXT,
    FOREIGN KEY (payment_id) REFERENCES Payments(payment_id)
);
