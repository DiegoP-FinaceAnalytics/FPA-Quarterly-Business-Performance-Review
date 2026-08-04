USE Northstar_FPnA;
GO

/* =========================================================
   GENERAL LEDGER FOREIGN KEYS
   ========================================================= */

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT FK_factGeneralLedger_dimDate
FOREIGN KEY (DateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT FK_factGeneralLedger_dimAccount
FOREIGN KEY (AccountKey)
REFERENCES warehouse.dimAccount (AccountKey);
GO

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT FK_factGeneralLedger_dimDepartment
FOREIGN KEY (DepartmentKey)
REFERENCES warehouse.dimDepartment (DepartmentKey);
GO

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT FK_factGeneralLedger_dimCostCenter
FOREIGN KEY (CostCenterKey)
REFERENCES warehouse.dimCostCenter (CostCenterKey);
GO

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT FK_factGeneralLedger_dimCurrency
FOREIGN KEY (CurrencyKey)
REFERENCES warehouse.dimCurrency (CurrencyKey);
GO


/* =========================================================
   BUDGET / FORECAST FOREIGN KEYS
   ========================================================= */

ALTER TABLE warehouse.factBudgetForecast
ADD CONSTRAINT FK_factBudgetForecast_dimDate
FOREIGN KEY (DateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factBudgetForecast
ADD CONSTRAINT FK_factBudgetForecast_dimDepartment
FOREIGN KEY (DepartmentKey)
REFERENCES warehouse.dimDepartment (DepartmentKey);
GO


/* =========================================================
   ACCOUNTS RECEIVABLE FOREIGN KEYS
   ========================================================= */

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_dimCustomer
FOREIGN KEY (CustomerKey)
REFERENCES warehouse.dimCustomer (CustomerKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_InvoiceDate
FOREIGN KEY (InvoiceDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_DueDate
FOREIGN KEY (DueDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_ReceivedDate
FOREIGN KEY (ReceivedDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_dimCurrency
FOREIGN KEY (CurrencyKey)
REFERENCES warehouse.dimCurrency (CurrencyKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_dimStatus
FOREIGN KEY (StatusKey)
REFERENCES warehouse.dimStatus (StatusKey);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT FK_factAccountsReceivable_dimTerms
FOREIGN KEY (TermsKey)
REFERENCES warehouse.dimTerms (TermsKey);
GO


/* =========================================================
   ACCOUNTS PAYABLE FOREIGN KEYS
   ========================================================= */

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_dimVendor
FOREIGN KEY (VendorKey)
REFERENCES warehouse.dimVendor (VendorKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_InvoiceDate
FOREIGN KEY (InvoiceDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_DueDate
FOREIGN KEY (DueDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_PaidDate
FOREIGN KEY (PaidDateKey)
REFERENCES warehouse.dimDate (DateKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_dimCurrency
FOREIGN KEY (CurrencyKey)
REFERENCES warehouse.dimCurrency (CurrencyKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_dimStatus
FOREIGN KEY (StatusKey)
REFERENCES warehouse.dimStatus (StatusKey);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT FK_factAccountsPayable_dimTerms
FOREIGN KEY (TermsKey)
REFERENCES warehouse.dimTerms (TermsKey);
GO