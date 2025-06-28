CREATE DATABASE IF NOT EXISTS analytics_db;
USE analytics_db;

-- 👁️ Table to track product views
CREATE TABLE Product_Views (
    view_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT,
    view_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 📈 Daily site traffic (visits per day)
CREATE TABLE Daily_Traffic (
    traffic_date DATE PRIMARY KEY,
    total_visits INT,
    unique_customers INT
);

-- 💵 Table for daily aggregated sales KPIs
CREATE TABLE Sales_KPIs (
    kpi_date DATE PRIMARY KEY,
    total_orders INT,
    total_revenue DECIMAL(10, 2),
    average_order_value DECIMAL(10, 2)
);
