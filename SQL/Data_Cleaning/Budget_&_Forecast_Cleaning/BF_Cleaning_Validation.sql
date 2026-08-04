-- =============================================
-- Step 3 - Validate Budget_Forecast_Clean
-- =============================================

-- Confirm the cleaned table contains all 48 rows
SELECT COUNT(*) AS CleanedRowCount
FROM clean.BudgetForecast;

-- Preview the first 10 cleaned records
SELECT TOP (10) *
FROM clean.BudgetForecast;