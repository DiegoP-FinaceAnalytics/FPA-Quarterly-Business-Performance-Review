-- Query 8 - Currency Distribution
SELECT 
Currency,
COUNT(*) AS TransactionCount
FROM staging.GeneralLedgerRaw
GROUP BY Currency
ORDER BY TransactionCount DESC;