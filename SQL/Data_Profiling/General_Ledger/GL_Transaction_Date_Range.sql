-- Query 5 - Transaction Date Range
SELECT
    MIN(TxnDate) AS EarliestTransaction,
    MAX(TxnDate) AS LatestTransaction
FROM staging.GeneralLedgerRaw;