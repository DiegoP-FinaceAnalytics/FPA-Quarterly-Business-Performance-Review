USE Northstar_FPnA;
GO

/* Dimension business identifiers */

ALTER TABLE warehouse.dimAccount
ADD CONSTRAINT UQ_dimAccount_AccountNumber
UNIQUE (AccountNumber);
GO

ALTER TABLE warehouse.dimDepartment
ADD CONSTRAINT UQ_dimDepartment_DepartmentName
UNIQUE (DepartmentName);
GO

ALTER TABLE warehouse.dimCurrency
ADD CONSTRAINT UQ_dimCurrency_CurrencyCode
UNIQUE (CurrencyCode);
GO

ALTER TABLE warehouse.dimCustomer
ADD CONSTRAINT UQ_dimCustomer_CustomerName
UNIQUE (CustomerName);
GO

ALTER TABLE warehouse.dimVendor
ADD CONSTRAINT UQ_dimVendor_VendorName
UNIQUE (VendorName);
GO

ALTER TABLE warehouse.dimCostCenter
ADD CONSTRAINT UQ_dimCostCenter_CostCenterName
UNIQUE (CostCenterName);
GO

ALTER TABLE warehouse.dimStatus
ADD CONSTRAINT UQ_dimStatus_StatusName
UNIQUE (StatusName);
GO

ALTER TABLE warehouse.dimTerms
ADD CONSTRAINT UQ_dimTerms_TermsName
UNIQUE (TermsName);
GO


/* Fact-table business transaction identifiers */

ALTER TABLE warehouse.factGeneralLedger
ADD CONSTRAINT UQ_factGeneralLedger_GLID
UNIQUE (GLID);
GO

ALTER TABLE warehouse.factAccountsReceivable
ADD CONSTRAINT UQ_factAccountsReceivable_ARID
UNIQUE (ARID);
GO

ALTER TABLE warehouse.factAccountsPayable
ADD CONSTRAINT UQ_factAccountsPayable_APID
UNIQUE (APID);
GO