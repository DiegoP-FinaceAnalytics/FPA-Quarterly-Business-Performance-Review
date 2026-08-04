-- Query 4 - Paid Date by Status
SELECT
    Status,
    COUNT(*) AS InvoiceCount,
    SUM(CASE WHEN PaidDate IS NULL THEN 1 ELSE 0 END) AS MissingPaidDate,
    SUM(CASE WHEN PaidDate IS NOT NULL THEN 1 ELSE 0 END) AS PresentPaidDate
FROM staging.AccountsPayableRaw
GROUP BY Status
ORDER BY Status;