-- Validate results

-- Confirm the fact table contains records
SELECT COUNT(*) AS AccountsPayableRecordCount
FROM warehouse.factAccountsPayable;

-- Review a sample of loaded records
SELECT TOP (10) *
FROM warehouse.factAccountsPayable;

-- Check for records with missing dimension relationships
SELECT *
FROM warehouse.factAccountsPayable
WHERE VendorKey IS NULL
   OR StatusKey IS NULL
   OR TermsKey IS NULL
   OR CurrencyKey IS NULL;