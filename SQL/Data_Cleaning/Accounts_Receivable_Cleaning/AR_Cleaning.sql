USE Northstar_FPnA;
GO

-- =============================================
-- Accounts Receivable Cleaning
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

-- Step 2 - Recreate the cleaned Accounts Receivable table
DROP TABLE IF EXISTS clean.AccountsReceivable;
GO

SELECT
    LTRIM(RTRIM(ARID)) AS ARID,
    LTRIM(RTRIM(Customer)) AS Customer,
    CAST(InvoiceDate AS date) AS InvoiceDate,
    CAST(DueDate AS date) AS DueDate,
    CAST(Amount AS decimal(19,4)) AS Amount,
    UPPER(LTRIM(RTRIM(Currency))) AS Currency,
    LTRIM(RTRIM(Status)) AS Status,
    CAST(ReceivedDate AS date) AS ReceivedDate,
    LTRIM(RTRIM(Terms)) AS Terms
INTO clean.AccountsReceivable
FROM staging.AccountsReceivableRaw;
GO