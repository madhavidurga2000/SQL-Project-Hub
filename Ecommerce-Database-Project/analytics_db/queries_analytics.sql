USE analytics_db;

-- 🔍 1. Top 5 most viewed products
SELECT product_id, COUNT(*) AS total_views
FROM Product_Views
GROUP BY product_id
ORDER BY total_views DESC
LIMIT 5;

-- 📊 2. Daily traffic trend (last 7 days)
SELECT * FROM Daily_Traffic
WHERE traffic_date >= CURDATE() - INTERVAL 7 DAY
ORDER BY traffic_date;

-- 📈 3. Weekly revenue report
SELECT 
    WEEK(kpi_date) AS week_number,
    SUM(total_revenue) AS weekly_revenue
FROM Sales_KPIs
GROUP BY WEEK(kpi_date)
ORDER BY week_number;

-- 💡 4. Average order value trend
SELECT kpi_date, average_order_value
FROM Sales_KPIs
ORDER BY kpi_date DESC
LIMIT 10;

-- 🧠 5. Customers who viewed but didn’t buy (Behavioral insight)
SELECT DISTINCT customer_id
FROM Product_Views
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM sales_db.Orders
);
