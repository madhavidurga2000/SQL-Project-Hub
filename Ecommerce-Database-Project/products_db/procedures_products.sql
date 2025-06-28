USE products_db;

-- 1. Procedure: Apply a discount to a product based on a coupon code
DELIMITER //

CREATE PROCEDURE ApplyCouponDiscount(
    IN input_product_id INT,
    IN input_coupon_code VARCHAR(50)
)
BEGIN
    DECLARE discount DECIMAL(5, 2);
    DECLARE new_price DECIMAL(10, 2);

    SELECT discount_percent INTO discount
    FROM Coupons
    WHERE coupon_code = input_coupon_code
      AND CURDATE() BETWEEN valid_from AND valid_to;

    IF discount IS NOT NULL THEN
        SELECT price * (1 - discount / 100) INTO new_price
        FROM Products
        WHERE product_id = input_product_id;

        -- Update the product price
        UPDATE Products
        SET price = new_price
        WHERE product_id = input_product_id;

        -- Log the change
        INSERT INTO Product_History (product_id, old_price, new_price)
        VALUES (
            input_product_id,
            (SELECT price FROM Products WHERE product_id = input_product_id),
            new_price
        );
    END IF;
END //

DELIMITER ;

-- 2. Procedure: Restock product inventory
DELIMITER //

CREATE PROCEDURE RestockProduct(
    IN input_product_id INT,
    IN restock_quantity INT,
    IN comment VARCHAR(255)
)
BEGIN
    -- Update quantity
    UPDATE Products
    SET stock_quantity = stock_quantity + restock_quantity
    WHERE product_id = input_product_id;

    -- Log the change
    INSERT INTO Product_Inventory_Log (product_id, change_type, quantity, remarks)
    VALUES (input_product_id, 'IN', restock_quantity, comment);
END //

DELIMITER ;

-- 3. Procedure: Reduce stock after a sale
DELIMITER //

CREATE PROCEDURE SellProduct(
    IN input_product_id INT,
    IN quantity_sold INT,
    IN comment VARCHAR(255)
)
BEGIN
    -- Reduce quantity
    UPDATE Products
    SET stock_quantity = stock_quantity - quantity_sold
    WHERE product_id = input_product_id;

    -- Log the change
    INSERT INTO Product_Inventory_Log (product_id, change_type, quantity, remarks)
    VALUES (input_product_id, 'OUT', quantity_sold, comment);
END //

DELIMITER ;
