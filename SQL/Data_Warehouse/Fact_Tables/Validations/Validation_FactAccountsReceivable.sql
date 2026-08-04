-- Validate results

-- Confirm the fact table contains records
SELECT COUNT(*) AS AccountsReceivableRecordCount
FROM warehouse.factAccountsReceivable;

-- Review a sample of loaded records
SELECT TOP (10) *
FROM warehouse.factAccountsReceivable;

-- Check for records with missing dimension relationships
SELECT *
FROM warehouse.factAccountsReceivable
WHERE CustomerKey IS NULL
   OR StatusKey IS NULL
   OR TermsKey IS NULL
   OR CurrencyKey IS NULL;
