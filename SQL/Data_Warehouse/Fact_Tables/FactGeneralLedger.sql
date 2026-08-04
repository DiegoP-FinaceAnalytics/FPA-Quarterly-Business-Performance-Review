USE Northstar_FPnA;
GO

-- Create General Ledger Fact Table

CREATE TABLE warehouse.factGeneralLedger
(
    FactGLKey INT IDENTITY(1,1) PRIMARY KEY,
    GLID NVARCHAR(255) NOT NULL,
    DateKey INT NOT NULL,
    AccountKey INT NOT NULL,
    DepartmentKey INT NOT NULL,
    CostCenterKey INT NOT NULL,
    CurrencyKey INT NOT NULL,
    Debit DECIMAL(19,4) NOT NULL,
    Credit DECIMAL(19,4) NOT NULL,
    Description NVARCHAR(255) NULL
);

-- Load General Ledger Fact Table

INSERT INTO warehouse.factGeneralLedger
(
    GLID,
    DateKey,
    AccountKey,
    DepartmentKey,
    CostCenterKey,
    CurrencyKey,
    Debit,
    Credit,
    Description
)

SELECT
    gl.GLID,
    d.DateKey,
    a.AccountKey,
    dep.DepartmentKey,
    cc.CostCenterKey,
    cur.CurrencyKey,
    gl.Debit,
    gl.Credit,
    gl.Description
FROM clean.GeneralLedger AS gl
INNER JOIN warehouse.dimDate AS d
    ON gl.TxnDate = d.FullDate
INNER JOIN warehouse.dimAccount AS a
    ON gl.AccountNumber = a.AccountNumber
   AND gl.AccountName = a.AccountName
INNER JOIN warehouse.dimDepartment AS dep
    ON gl.Dept = dep.DepartmentName
INNER JOIN warehouse.dimCostCenter AS cc
    ON gl.CostCenter = cc.CostCenterName
INNER JOIN warehouse.dimCurrency AS cur
    ON gl.Currency = cur.CurrencyCode;