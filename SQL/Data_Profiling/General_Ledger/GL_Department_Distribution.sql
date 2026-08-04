-- Query 6 - Department Distribution
SELECT
    Dept,
    COUNT(*) AS TransactionCount
FROM staging.GeneralLedgerRaw
GROUP BY Dept
ORDER BY TransactionCount DESC;