-- Query 7 - Cost Center Distribution
SELECT
    CostCenter,
    COUNT(*) AS TransactionCount
FROM staging.GeneralLedgerRaw
GROUP BY CostCenter
ORDER BY TransactionCount DESC;