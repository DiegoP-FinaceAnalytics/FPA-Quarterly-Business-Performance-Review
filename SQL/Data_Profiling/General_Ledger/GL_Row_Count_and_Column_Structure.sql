USE Northstar_FPnA;
GO

-- =============================================
-- GENERAL LEDGER PROFILING
-- =============================================

-- Query 1 - Row Count
SELECT COUNT(*) AS TotalRows
FROM staging.GeneralLedgerRaw;


-- Query 2 - Column Structure
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'staging'
  AND TABLE_NAME = 'GeneralLedgerRaw'
ORDER BY ORDINAL_POSITION;