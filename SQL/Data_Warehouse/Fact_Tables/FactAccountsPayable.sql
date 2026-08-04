USE Northstar_FPnA;
GO

-- Create Accounts Payable Fact Table

CREATE TABLE warehouse.factAccountsPayable
(
    FactAPKey INT IDENTITY(1,1) PRIMARY KEY,
    APID NVARCHAR(255) NOT NULL,
    VendorKey INT NOT NULL,
    InvoiceDateKey INT NOT NULL,
    DueDateKey INT NOT NULL,
    PaidDateKey INT NULL,
    CurrencyKey INT NOT NULL,
    StatusKey INT NOT NULL,
    TermsKey INT NOT NULL,
    Amount DECIMAL(19,4) NOT NULL
);
GO

USE Northstar_FPnA;
GO

-- Load Accounts Payable Fact Table

INSERT INTO warehouse.factAccountsPayable
(
    APID,
    VendorKey,
    InvoiceDateKey,
    DueDateKey,
    PaidDateKey,
    CurrencyKey,
    StatusKey,
    TermsKey,
    Amount
)
SELECT
    ap.APID,
    v.VendorKey,
    d1.DateKey,
    d2.DateKey,
    d3.DateKey,
    cur.CurrencyKey,
    s.StatusKey,
    t.TermsKey,
    ap.Amount
FROM clean.AccountsPayable AS ap
INNER JOIN warehouse.dimVendor AS v
    ON ap.Vendor = v.VendorName
INNER JOIN warehouse.dimDate AS d1
    ON ap.InvoiceDate = d1.FullDate
INNER JOIN warehouse.dimDate AS d2
    ON ap.DueDate = d2.FullDate
LEFT JOIN warehouse.dimDate AS d3
    ON ap.PaidDate = d3.FullDate
INNER JOIN warehouse.dimCurrency AS cur
    ON ap.Currency = cur.CurrencyCode
INNER JOIN warehouse.dimStatus AS s
    ON ap.Status = s.StatusName
INNER JOIN warehouse.dimTerms AS t
    ON ap.Terms = t.TermsName;
GO