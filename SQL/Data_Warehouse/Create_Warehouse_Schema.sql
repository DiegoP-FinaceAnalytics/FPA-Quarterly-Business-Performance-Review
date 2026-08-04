USE Northstar_FPnA;
GO

IF NOT EXISTS
(
    SELECT 1
    FROM sys.schemas
    WHERE name = 'warehouse'
)
BEGIN
    EXEC('CREATE SCHEMA warehouse');
END;
GO