--# Product & Category Insights
--  Total products available in each category
SELECT C.category_name, COUNT(P.product_id) AS total_products
FROM Products P
JOIN Categories C ON P.category_id = C.category_id
GROUP BY C.category_name;

-- List products that are out of stock
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity = 0;

--  Products with low stock (less than 10 units)
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity < 10;

--#Pricing & Discount Analysis
--  Top 5 most expensive products
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 5;

--  Products with available coupons
SELECT P.product_name, C.coupon_code, C.discount_percent
FROM Products P
JOIN Coupons C ON P.category_id = C.category_id;  -- If you link coupons to categories

--  Find products priced between ₹1000 and ₹10000
SELECT product_name, price
FROM Products
WHERE price BETWEEN 1000 AND 10000;

----#Vendor Analysis

--  Count of products each vendor supplies
SELECT V.vendor_name, COUNT(P.product_id) AS products_supplied
FROM Vendors V
JOIN Products P ON V.vendor_id = P.vendor_id
GROUP BY V.vendor_name;

--  Vendors with more than 3 products
SELECT V.vendor_name, COUNT(P.product_id) AS products_count
FROM Vendors V
JOIN Products P ON V.vendor_id = P.vendor_id
GROUP BY V.vendor_name
HAVING COUNT(P.product_id) > 3;

---#Inventory Value Reports
--  Total inventory value per product
SELECT product_name, price, stock_quantity, (price * stock_quantity) AS inventory_value
FROM Products;

--  Total inventory value per vendor
SELECT V.vendor_name, SUM(P.price * P.stock_quantity) AS total_inventory_value
FROM Vendors V
JOIN Products P ON V.vendor_id = P.vendor_id
GROUP BY V.vendor_name;

--#Coupon Validity Check

-- Coupons that are currently valid
SELECT coupon_code, discount_percent
FROM Coupons
WHERE CURDATE() BETWEEN valid_from AND valid_to;



