USE Northstar_FPnA;
GO

-- =============================================
-- Accounts Payable Cleaning
-- =============================================

-- Step 1 - Create clean schema if needed
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'clean'
)
BEGIN
    EXEC('CREATE SCHEMA clean');
END;
GO

-- Step 2 - Recreate the cleaned Accounts Payable table
DROP TABLE IF EXISTS clean.AccountsPayable;
GO

SELECT
    LTRIM(RTRIM(APID)) AS APID,
    LTRIM(RTRIM(Vendor)) AS Vendor,
    CAST(InvoiceDate AS date) AS InvoiceDate,
    CAST(DueDate AS date) AS DueDate,
    CAST(Amount AS decimal(19,4)) AS Amount,
    UPPER(LTRIM(RTRIM(Currency))) AS Currency,
    LTRIM(RTRIM(Status)) AS Status,
    CAST(PaidDate AS date) AS PaidDate,
    LTRIM(RTRIM(Terms)) AS Terms
INTO clean.AccountsPayable
FROM staging.AccountsPayableRaw;
GO