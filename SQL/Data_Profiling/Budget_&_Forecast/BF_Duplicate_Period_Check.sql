-- Query 4 - Duplicate Department, Year, Quarter
SELECT
    FiscalYear,
    Dept,
    Quarter,
    COUNT(*) AS DuplicateCount
FROM staging.BudgetForecastRaw
GROUP BY FiscalYear, Dept, Quarter
HAVING COUNT(*) > 1;