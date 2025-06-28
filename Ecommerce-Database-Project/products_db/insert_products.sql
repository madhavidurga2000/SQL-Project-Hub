-- Insert sample categories
INSERT INTO Categories (category_name)
VALUES 
    ('Electronics'),
    ('Clothing'),
    ('Home Appliances'),
    ('Books');

-- Insert sample vendors
INSERT INTO Vendors (vendor_name, contact_email)
VALUES 
    ('TechMart', 'support@techmart.com'),
    ('ClothHouse', 'sales@clothhouse.com'),
    ('HomeStyle', 'info@homestyle.com'),
    ('BookBarn', 'hello@bookbarn.com');

-- Insert sample products
INSERT INTO Products (product_name, category_id, vendor_id, price, stock_quantity)
VALUES
    ('Smartphone X', 1, 1, 19999.00, 50),
    ('Jeans - Slim Fit', 2, 2, 999.00, 100),
    ('Microwave Oven', 3, 3, 6499.00, 30),
    ('Fiction Novel', 4, 4, 399.00, 200);

-- Insert sample coupons
INSERT INTO Coupons (coupon_code, discount_percent, valid_from, valid_to)
VALUES
    ('NEWUSER20', 20.00, '2025-06-01', '2025-07-01'),
    ('SUMMER10', 10.00, '2025-06-15', '2025-08-31');
-- Insert sample categories
INSERT INTO Categories (category_name)
VALUES 
    ('Electronics'),
    ('Clothing'),
    ('Home Appliances'),
    ('Books');

-- Insert sample vendors
INSERT INTO Vendors (vendor_name, contact_email)
VALUES 
    ('TechMart', 'support@techmart.com'),
    ('ClothHouse', 'sales@clothhouse.com'),
    ('HomeStyle', 'info@homestyle.com'),
    ('BookBarn', 'hello@bookbarn.com');

-- Insert sample products
INSERT INTO Products (product_name, category_id, vendor_id, price, stock_quantity)
VALUES
    ('Smartphone X', 1, 1, 19999.00, 50),
    ('Jeans - Slim Fit', 2, 2, 999.00, 100),
    ('Microwave Oven', 3, 3, 6499.00, 30),
    ('Fiction Novel', 4, 4, 399.00, 200);

-- Insert sample coupons
INSERT INTO Coupons (coupon_code, discount_percent, valid_from, valid_to)
VALUES
    ('NEWUSER20', 20.00, '2025-06-01', '2025-07-01'),
    ('SUMMER10', 10.00, '2025-06-15', '2025-08-31');

-- 🔁 Insert into Product_History (old → new price)
INSERT INTO Product_History (product_id, old_price, new_price)
VALUES 
    (1, 21999.00, 19999.00),
    (2, 1299.00, 999.00);

-- 🖼️ Insert product image URLs
INSERT INTO Product_Images (product_id, image_url)
VALUES 
    (1, 'https://example.com/images/smartphone.jpg'),
    (2, 'https://example.com/images/jeans.jpg'),
    (3, 'https://example.com/images/microwave.jpg'),
    (4, 'https://example.com/images/book.jpg');

-- 🏷️ Insert tag names
INSERT INTO Product_Tags (tag_name)
VALUES 
    ('New Arrival'),
    ('Bestseller'),
    ('Discounted');

-- 🧩 Map tags to products
INSERT INTO Product_Tag_Map (product_id, tag_id)
VALUES 
    (1, 1),  -- Smartphone X: New Arrival
    (1, 2),  -- Smartphone X: Bestseller
    (2, 3),  -- Jeans: Discounted
    (3, 1);  -- Microwave Oven: New Arrival
