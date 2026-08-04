USE Northstar_FPnA;
GO

-- Create the clean schema if it does not already exist
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'clean'
)
BEGIN
    EXEC('CREATE SCHEMA clean');
END;
GO


-- Remove the cleaned table if this script is rerun
DROP TABLE IF EXISTS clean.GeneralLedger;
GO


-- Create the cleaned General Ledger table
SELECT
    LTRIM(RTRIM(GLID)) AS GLID,
    CAST(TxnDate AS date) AS TxnDate,
    LTRIM(RTRIM(AccountNumber)) AS AccountNumber,
    LTRIM(RTRIM(AccountName)) AS AccountName,
    CAST(Debit AS decimal(19,4)) AS Debit,
    CAST(Credit AS decimal(19,4)) AS Credit,
    LTRIM(RTRIM(Dept)) AS Dept,
    LTRIM(RTRIM(CostCenter)) AS CostCenter,
    LTRIM(RTRIM(Description)) AS Description,
    UPPER(LTRIM(RTRIM(Currency))) AS Currency
INTO clean.GeneralLedger
FROM staging.GeneralLedgerRaw;
GO