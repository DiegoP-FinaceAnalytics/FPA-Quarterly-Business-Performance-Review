USE Northstar_FPnA;
GO

-- Create Accounts Receivable Fact Table

CREATE TABLE warehouse.factAccountsReceivable
(
    FactARKey INT IDENTITY(1,1) PRIMARY KEY,

    ARID NVARCHAR(255) NOT NULL,

    CustomerKey INT NOT NULL,
    InvoiceDateKey INT NOT NULL,
    DueDateKey INT NOT NULL,
    ReceivedDateKey INT NULL,

    CurrencyKey INT NOT NULL,
    StatusKey INT NOT NULL,
    TermsKey INT NOT NULL,

    Amount DECIMAL(19,4) NOT NULL
);
GO

-- Load Accounts Receivable Fact Table

INSERT INTO warehouse.factAccountsReceivable
(
    ARID,
    CustomerKey,
    InvoiceDateKey,
    DueDateKey,
    ReceivedDateKey,
    CurrencyKey,
    StatusKey,
    TermsKey,
    Amount
)

SELECT
    ar.ARID,
    c.CustomerKey,
    d1.DateKey,
    d2.DateKey,
    d3.DateKey,
    cur.CurrencyKey,
    s.StatusKey,
    t.TermsKey,
    ar.Amount

FROM clean.AccountsReceivable AS ar

INNER JOIN warehouse.dimCustomer AS c
    ON ar.Customer = c.CustomerName

INNER JOIN warehouse.dimDate AS d1
    ON ar.InvoiceDate = d1.FullDate

INNER JOIN warehouse.dimDate AS d2
    ON ar.DueDate = d2.FullDate

LEFT JOIN warehouse.dimDate AS d3
    ON ar.ReceivedDate = d3.FullDate

INNER JOIN warehouse.dimCurrency AS cur
    ON ar.Currency = cur.CurrencyCode

INNER JOIN warehouse.dimStatus AS s
    ON ar.Status = s.StatusName

INNER JOIN warehouse.dimTerms AS t
    ON ar.Terms = t.TermsName;
GO