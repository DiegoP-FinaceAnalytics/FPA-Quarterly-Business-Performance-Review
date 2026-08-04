-- Query 4 - Duplicate GLIDs
SELECT
    GLID,
    COUNT(*) AS DuplicateCount
FROM staging.GeneralLedgerRaw
GROUP BY GLID
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;