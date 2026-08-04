-- Query 5 - Duplicate APIDs
SELECT
    APID,
    COUNT(*) AS DuplicateCount
FROM staging.AccountsPayableRaw
GROUP BY APID
HAVING COUNT(*) > 1;