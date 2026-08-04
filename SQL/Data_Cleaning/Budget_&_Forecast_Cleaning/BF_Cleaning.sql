USE Northstar_FPnA;
GO

-- =============================================
-- Budget & Forecast Cleaning
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

-- Step 2 - Recreate the cleaned Budget & Forecast table
DROP TABLE IF EXISTS clean.BudgetForecast;
GO

SELECT
    FiscalYear,
    LTRIM(RTRIM(Dept)) AS Dept,
    Quarter,
    CAST(BudgetUSD AS decimal(19,4)) AS BudgetUSD,
    CAST(ForecastUSD AS decimal(19,4)) AS ForecastUSD,
    CAST(ActualUSD AS decimal(19,4)) AS ActualUSD,
    CAST(VarianceUSD AS decimal(19,4)) AS VarianceUSD,
    LTRIM(RTRIM(Notes)) AS Notes
INTO clean.BudgetForecast
FROM staging.BudgetForecastRaw;
GO