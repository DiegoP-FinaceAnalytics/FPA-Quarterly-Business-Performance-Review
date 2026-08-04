-- Query 3 - Missing Values
SELECT
    SUM(CASE WHEN GLID IS NULL THEN 1 ELSE 0 END) AS Missing_GLID,
    SUM(CASE WHEN TxnDate IS NULL THEN 1 ELSE 0 END) AS Missing_TxnDate,
    SUM(CASE WHEN AccountNumber IS NULL THEN 1 ELSE 0 END) AS Missing_AccountNumber,
    SUM(CASE WHEN AccountName IS NULL THEN 1 ELSE 0 END) AS Missing_AccountName,
    SUM(CASE WHEN Debit IS NULL THEN 1 ELSE 0 END) AS Missing_Debit,
    SUM(CASE WHEN Credit IS NULL THEN 1 ELSE 0 END) AS Missing_Credit,
    SUM(CASE WHEN Dept IS NULL THEN 1 ELSE 0 END) AS Missing_Dept,
    SUM(CASE WHEN CostCenter IS NULL THEN 1 ELSE 0 END) AS Missing_CostCenter,
    SUM(CASE WHEN Description IS NULL THEN 1 ELSE 0 END) AS Missing_Description,
    SUM(CASE WHEN Currency IS NULL THEN 1 ELSE 0 END) AS Missing_Currency
FROM staging.GeneralLedgerRaw;