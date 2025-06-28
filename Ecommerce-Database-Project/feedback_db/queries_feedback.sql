USE feedback_db;

-- 🌟 1. Top-rated products (average rating > 4.0)
SELECT product_id, AVG(rating) AS avg_rating, COUNT(*) AS total_reviews
FROM Product_Reviews
GROUP BY product_id
HAVING avg_rating > 4.0;

-- 🧾 2. List unresolved support tickets
SELECT * FROM Customer_Support_Tickets
WHERE ticket_status IN ('Open', 'In Progress');

-- 📈 3. Average response time (in hours)
SELECT 
    AVG(TIMESTAMPDIFF(HOUR, created_at, resolved_at)) AS avg_response_hours
FROM Customer_Support_Tickets
WHERE resolved_at IS NOT NULL;

-- 📊 4. Review distribution for a specific product (e.g., product_id = 1)
SELECT rating, COUNT(*) AS count
FROM Product_Reviews
WHERE product_id = 1
GROUP BY rating
ORDER BY rating DESC;

-- 🛠️ 5. Open tickets grouped by issue category
SELECT issue_category, COUNT(*) AS open_count
FROM Customer_Support_Tickets
WHERE ticket_status = 'Open'
GROUP BY issue_category;
