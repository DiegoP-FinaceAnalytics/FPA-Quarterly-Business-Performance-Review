USE Northstar_FPnA;
GO

/* =========================================================
   GENERAL LEDGER INDEXES
   ========================================================= */

CREATE NONCLUSTERED INDEX IX_factGeneralLedger_DateKey
ON warehouse.factGeneralLedger (DateKey);
GO

CREATE NONCLUSTERED INDEX IX_factGeneralLedger_AccountKey
ON warehouse.factGeneralLedger (AccountKey);
GO

CREATE NONCLUSTERED INDEX IX_factGeneralLedger_DepartmentKey
ON warehouse.factGeneralLedger (DepartmentKey);
GO

CREATE NONCLUSTERED INDEX IX_factGeneralLedger_CostCenterKey
ON warehouse.factGeneralLedger (CostCenterKey);
GO

CREATE NONCLUSTERED INDEX IX_factGeneralLedger_CurrencyKey
ON warehouse.factGeneralLedger (CurrencyKey);
GO


/* =========================================================
   BUDGET / FORECAST INDEXES
   ========================================================= */

CREATE NONCLUSTERED INDEX IX_factBudgetForecast_DateKey
ON warehouse.factBudgetForecast (DateKey);
GO

CREATE NONCLUSTERED INDEX IX_factBudgetForecast_DepartmentKey
ON warehouse.factBudgetForecast (DepartmentKey);
GO


/* =========================================================
   ACCOUNTS RECEIVABLE INDEXES
   ========================================================= */

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_CustomerKey
ON warehouse.factAccountsReceivable (CustomerKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_InvoiceDateKey
ON warehouse.factAccountsReceivable (InvoiceDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_DueDateKey
ON warehouse.factAccountsReceivable (DueDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_ReceivedDateKey
ON warehouse.factAccountsReceivable (ReceivedDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_CurrencyKey
ON warehouse.factAccountsReceivable (CurrencyKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_StatusKey
ON warehouse.factAccountsReceivable (StatusKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsReceivable_TermsKey
ON warehouse.factAccountsReceivable (TermsKey);
GO


/* =========================================================
   ACCOUNTS PAYABLE INDEXES
   ========================================================= */

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_VendorKey
ON warehouse.factAccountsPayable (VendorKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_InvoiceDateKey
ON warehouse.factAccountsPayable (InvoiceDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_DueDateKey
ON warehouse.factAccountsPayable (DueDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_PaidDateKey
ON warehouse.factAccountsPayable (PaidDateKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_CurrencyKey
ON warehouse.factAccountsPayable (CurrencyKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_StatusKey
ON warehouse.factAccountsPayable (StatusKey);
GO

CREATE NONCLUSTERED INDEX IX_factAccountsPayable_TermsKey
ON warehouse.factAccountsPayable (TermsKey);
GO