-- =============================================
-- Step 3 - Validate Accounts_Payable_Clean
-- =============================================

-- Confirm the cleaned table contains all 800 rows
SELECT COUNT(*) AS CleanedRowCount
FROM clean.AccountsPayable;

-- Preview the first 10 cleaned records
SELECT TOP (10) *
FROM clean.AccountsPayable;