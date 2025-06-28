-- 1. Daily total sales report
SELECT order_date, SUM(total_amount) AS daily_sales
FROM Orders
WHERE status = 'Delivered'
GROUP BY order_date;

-- 2. List of refunded orders
SELECT O.order_id, P.payment_id, R.refund_amount, R.reason
FROM Refunds R
JOIN Payments P ON R.payment_id = P.payment_id
JOIN Orders O ON P.order_id = O.order_id;

-- 3. Best-selling products (by quantity)
SELECT product_id, SUM(quantity) AS total_sold
FROM Order_Items
GROUP BY product_id
ORDER BY total_sold DESC;

-- 4. Revenue per product
SELECT product_id, SUM(subtotal) AS total_revenue
FROM Order_Items
GROUP BY product_id
ORDER BY total_revenue DESC;

-- 5. Payment method statistics
SELECT payment_method, COUNT(*) AS count, SUM(amount_paid) AS total_collected
FROM Payments
WHERE payment_status = 'Success'
GROUP BY payment_method;

-- 6. Pending or failed payments
SELECT * FROM Payments
WHERE payment_status IN ('Failed');
