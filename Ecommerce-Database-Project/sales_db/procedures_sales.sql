USE sales_db;

--  Procedure to cancel an order and initiate refund if already paid
DELIMITER $$

CREATE PROCEDURE cancel_order(IN p_order_id INT, IN p_reason TEXT)
BEGIN
    DECLARE v_payment_id INT;
    DECLARE v_amount DECIMAL(10,2);

    -- Step 1: Update order status
    UPDATE Orders
    SET status = 'Cancelled'
    WHERE order_id = p_order_id;

    -- Step 2: Get payment details
    SELECT payment_id, amount_paid
    INTO v_payment_id, v_amount
    FROM Payments
    WHERE order_id = p_order_id AND payment_status = 'Success';

    -- Step 3: Insert into Refunds table
    IF v_payment_id IS NOT NULL THEN
        INSERT INTO Refunds (payment_id, refund_date, refund_amount, reason)
        VALUES (v_payment_id, CURDATE(), v_amount, p_reason);
    END IF;
END$$

DELIMITER ;


--  Procedure to calculate total amount from order items (can be reused before insert)
DELIMITER $$

CREATE PROCEDURE calculate_order_total(IN p_order_id INT, OUT p_total DECIMAL(10,2))
BEGIN
    SELECT SUM(subtotal)
    INTO p_total
    FROM Order_Items
    WHERE order_id = p_order_id;
END$$

DELIMITER ;
