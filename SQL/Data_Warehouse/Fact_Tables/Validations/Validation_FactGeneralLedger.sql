-- Validate results

-- Confirm the fact table contains records
SELECT COUNT(*) AS GeneralLedgerRecordCount
FROM warehouse.factGeneralLedger;

-- Review a sample of loaded records
SELECT TOP (10) *
FROM warehouse.factGeneralLedger;

-- Check for records with missing dimension relationships
SELECT *
FROM warehouse.factGeneralLedger
WHERE DateKey IS NULL
   OR AccountKey IS NULL
   OR DepartmentKey IS NULL
   OR CostCenterKey IS NULL
   OR CurrencyKey IS NULL;