-- Validate results

-- Confirm the fact table contains records
SELECT COUNT(*) AS BudgetForecastRecordCount
FROM warehouse.factBudgetForecast;

-- Review a sample of loaded records
SELECT TOP (10) *
FROM warehouse.factBudgetForecast;

-- Check for missing dimension relationships
SELECT *
FROM warehouse.factBudgetForecast
WHERE DateKey IS NULL
   OR DepartmentKey IS NULL;