USE delivery_db;

-- 🔍 1. Find all delayed deliveries
SELECT * FROM Delivery_Status
WHERE delivery_status = 'Delayed' OR actual_delivery > expected_delivery;

-- 🚚 2. Partner-wise delivery count
SELECT SP.partner_name, COUNT(DS.delivery_id) AS total_deliveries
FROM Delivery_Status DS
JOIN Shipping_Partners SP ON DS.partner_id = SP.partner_id
GROUP BY SP.partner_name;

-- 🕒 3. Average delivery delay in days
SELECT 
    partner_id,
    AVG(DATEDIFF(actual_delivery, expected_delivery)) AS avg_delay
FROM Delivery_Status
WHERE actual_delivery > expected_delivery
GROUP BY partner_id;

-- ✅ 4. On-time delivery rate per partner
SELECT 
    SP.partner_name,
    COUNT(CASE WHEN DS.actual_delivery <= DS.expected_delivery THEN 1 END) / COUNT(*) * 100 AS on_time_rate
FROM Delivery_Status DS
JOIN Shipping_Partners SP ON DS.partner_id = SP.partner_id
GROUP BY SP.partner_name;
