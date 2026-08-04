USE Northstar_FPnA;
GO

-- Create Budget and Forecast Fact Table

CREATE TABLE warehouse.factBudgetForecast
(
    FactBudgetForecastKey INT IDENTITY(1,1) PRIMARY KEY,
    DateKey INT NOT NULL,
    DepartmentKey INT NOT NULL,
    BudgetUSD DECIMAL(19,4) NOT NULL,
    ForecastUSD DECIMAL(19,4) NOT NULL,
    ActualUSD DECIMAL(19,4) NOT NULL,
    VarianceUSD DECIMAL(19,4) NOT NULL,
    Notes NVARCHAR(255) NULL
);

-- Load Budget and Forecast Fact Table

INSERT INTO warehouse.factBudgetForecast
(
    DateKey,
    DepartmentKey,
    BudgetUSD,
    ForecastUSD,
    ActualUSD,
    VarianceUSD,
    Notes
)
SELECT
    d.DateKey,
    dep.DepartmentKey,
    bf.BudgetUSD,
    bf.ForecastUSD,
    bf.ActualUSD,
    bf.VarianceUSD,
    bf.Notes
FROM clean.BudgetForecast AS bf
INNER JOIN warehouse.dimDate AS d
    ON d.FullDate =
        DATEFROMPARTS
        (
            bf.FiscalYear,
            ((bf.Quarter - 1) * 3) + 1,
            1
        )
INNER JOIN warehouse.dimDepartment AS dep
    ON bf.Dept = dep.DepartmentName;