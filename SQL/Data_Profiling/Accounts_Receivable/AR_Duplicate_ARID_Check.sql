-- Query 5 - Duplicate ARIDs
SELECT
ARID,
COUNT(*) AS DuplicatesCount
FROM staging.AccountsReceivableRaw
GROUP BY ARID
HAVING COUNT(*) > 1;