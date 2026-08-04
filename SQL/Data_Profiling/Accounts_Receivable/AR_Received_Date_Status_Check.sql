-- Query 4 - Received Date by Status
SELECT
    Status,
    COUNT(*) AS InvoiceCount,
    SUM(CASE WHEN ReceivedDate IS NULL THEN 1 ELSE 0 END) AS MissingReceivedDate,
    SUM(CASE WHEN ReceivedDate IS NOT NULL THEN 1 ELSE 0 END) AS PresentReceivedDate
FROM staging.AccountsReceivableRaw
GROUP BY Status
ORDER BY Status;