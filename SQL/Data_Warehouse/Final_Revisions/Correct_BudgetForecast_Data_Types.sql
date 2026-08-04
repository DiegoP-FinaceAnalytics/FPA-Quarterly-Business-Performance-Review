USE Northstar_FPnA;
GO

ALTER TABLE clean.BudgetForecast
ALTER COLUMN FiscalYear INT NOT NULL;
GO

ALTER TABLE clean.BudgetForecast
ALTER COLUMN Quarter TINYINT NOT NULL;
GO