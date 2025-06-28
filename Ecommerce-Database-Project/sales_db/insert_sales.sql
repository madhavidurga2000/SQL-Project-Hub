-- Insert orders
INSERT INTO Orders (customer_id, order_date, status, total_amount)
VALUES 
(1, '2025-06-01', 'Delivered', 19999.00),
(2, '2025-06-03', 'Cancelled', 999.00),
(3, '2025-06-05', 'Shipped', 6499.00);

-- Insert order items
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price, subtotal)
VALUES 
(1, 1, 1, 19999.00, 19999.00),
(2, 2, 1, 999.00, 999.00),
(3, 3, 1, 6499.00, 6499.00);

-- Insert payments
INSERT INTO Payments (order_id, payment_date, amount_paid, payment_method, payment_status)
VALUES 
(1, '2025-06-01', 19999.00, 'Credit Card', 'Success'),
(2, '2025-06-03', 999.00, 'UPI', 'Refunded'),
(3, '2025-06-05', 6499.00, 'COD', 'Success');

-- Insert refund
INSERT INTO Refunds (payment_id, refund_date, refund_amount, reason)
VALUES 
(2, '2025-06-04', 999.00, 'Order Cancelled');
