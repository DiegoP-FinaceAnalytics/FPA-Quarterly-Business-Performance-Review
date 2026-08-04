-- Query 3 - Missing Values
SELECT
    SUM(CASE WHEN ARID IS NULL THEN 1 ELSE 0 END) AS Missing_ARID,
    SUM(CASE WHEN Customer IS NULL THEN 1 ELSE 0 END) AS Missing_Customer,
    SUM(CASE WHEN InvoiceDate IS NULL THEN 1 ELSE 0 END) AS Missing_InvoiceDate,
    SUM(CASE WHEN DueDate IS NULL THEN 1 ELSE 0 END) AS Missing_DueDate,
    SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS Missing_Amount,
    SUM(CASE WHEN Currency IS NULL THEN 1 ELSE 0 END) AS Missing_Currency,
    SUM(CASE WHEN Status IS NULL THEN 1 ELSE 0 END) AS Missing_Status,
    SUM(CASE WHEN ReceivedDate IS NULL THEN 1 ELSE 0 END) AS Missing_ReceivedDate,
    SUM(CASE WHEN Terms IS NULL THEN 1 ELSE 0 END) AS Missing_Terms
FROM staging.AccountsReceivableRaw;