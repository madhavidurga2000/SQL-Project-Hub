USE reports_db;

CREATE OR REPLACE VIEW Unpaid_Fees AS
SELECT 
    f.StudentID,
    f.Amount,
    f.DueDate
FROM fees_db.Penalties f
WHERE f.Paid = 0; -- Assuming a 'Paid' flag (0=unpaid,1=paid)
