-- =============================================
-- Step 3 - Validate Accounts_Receivable_Clean
-- =============================================

-- Confirm the cleaned table contains all 900 rows
SELECT COUNT(*) AS CleanedRowCount
FROM clean.AccountsReceivable;

-- Preview the first 10 cleaned records
SELECT TOP (10) *
FROM clean.AccountsReceivable;