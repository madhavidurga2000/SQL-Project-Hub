-- Trigger: When a refund is added, update payment_status to 'Refunded'
DELIMITER $$

CREATE TRIGGER trg_after_refund_insert
AFTER INSERT ON Refunds
FOR EACH ROW
BEGIN
    UPDATE Payments
    SET payment_status = 'Refunded'
    WHERE payment_id = NEW.payment_id;
END$$

DELIMITER ;
