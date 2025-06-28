-- Insert sample customers
INSERT INTO Customers (full_name, email, phone_number)
VALUES 
('Ananya Rao', 'ananya.rao@example.com', '9876543210'),
('Kiran Verma', 'kiran.verma@example.com', '9123456780'),
('Rohit Singh', 'rohit.singh@example.com', '9988776655');

-- Insert sample addresses
INSERT INTO Addresses (customer_id, address_line1, address_line2, city, state, postal_code, country, address_type)
VALUES 
(1, '123 MG Road', '', 'Bangalore', 'Karnataka', '560001', 'India', 'Shipping'),
(1, '456 Residency Road', 'Apt 5B', 'Bangalore', 'Karnataka', '560025', 'India', 'Billing'),
(2, '11 Park Street', '', 'Hyderabad', 'Telangana', '500081', 'India', 'Shipping'),
(3, '55 Nehru Nagar', 'Block C', 'Delhi', 'Delhi', '110092', 'India', 'Shipping');

-- Insert login history
INSERT INTO User_Login_History (customer_id, ip_address)
VALUES 
(1, '192.168.1.10'),
(2, '192.168.1.15'),
(3, '192.168.1.20'),
(1, '192.168.1.11');
