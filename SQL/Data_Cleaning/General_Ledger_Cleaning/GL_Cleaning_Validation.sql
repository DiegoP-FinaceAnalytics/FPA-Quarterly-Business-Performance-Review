-- =============================================
-- Step 3 - Validate General_Ledger_Clean
-- =============================================

-- Confirm the cleaned table contains all 2,000 rows
SELECT COUNT(*) AS CleanedRowCount
FROM clean.GeneralLedger;

-- Preview the first 10 cleaned records
SELECT TOP (10) *
FROM clean.GeneralLedger;