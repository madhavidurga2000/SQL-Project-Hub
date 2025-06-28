-- 1. List all customers with their latest login time
SELECT 
    C.customer_id, 
    C.full_name, 
    MAX(L.login_datetime) AS last_login
FROM Customers C
JOIN User_Login_History L ON C.customer_id = L.customer_id
GROUP BY C.customer_id;

-- 2. Count how many times each customer logged in
SELECT 
    C.full_name, 
    COUNT(L.login_id) AS total_logins
FROM Customers C
JOIN User_Login_History L ON C.customer_id = L.customer_id
GROUP BY C.customer_id;

-- 3. Find customers with multiple addresses
SELECT 
    customer_id,
    COUNT(address_id) AS address_count
FROM Addresses
GROUP BY customer_id
HAVING address_count > 1;

-- 4. Get all customer details with their shipping addresses
SELECT 
    C.full_name,
    C.email,
    A.address_line1,
    A.city,
    A.state,
    A.country
FROM Customers C
JOIN Addresses A ON C.customer_id = A.customer_id
WHERE A.address_type = 'Shipping';
