-- Query 3 - Missing Values
SELECT
    SUM(CASE WHEN FiscalYear IS NULL THEN 1 ELSE 0 END) AS Missing_FiscalYear,
    SUM(CASE WHEN Dept IS NULL THEN 1 ELSE 0 END) AS Missing_Dept,
    SUM(CASE WHEN Quarter IS NULL THEN 1 ELSE 0 END) AS Missing_Quarter,
    SUM(CASE WHEN BudgetUSD IS NULL THEN 1 ELSE 0 END) AS Missing_BudgetUSD,
    SUM(CASE WHEN ForecastUSD IS NULL THEN 1 ELSE 0 END) AS Missing_ForecastUSD,
    SUM(CASE WHEN ActualUSD IS NULL THEN 1 ELSE 0 END) AS Missing_ActualUSD,
    SUM(CASE WHEN VarianceUSD IS NULL THEN 1 ELSE 0 END) AS Missing_VarianceUSD,
    SUM(CASE WHEN Notes IS NULL THEN 1 ELSE 0 END) AS Missing_Notes
FROM staging.BudgetForecastRaw;