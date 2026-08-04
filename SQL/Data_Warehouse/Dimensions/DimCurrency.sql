USE Northstar_FPnA;
GO

-- Create Currency Dimension

CREATE TABLE warehouse.dimCurrency
(
    CurrencyKey INT IDENTITY(1,1) PRIMARY KEY,
    CurrencyCode NVARCHAR(10) NOT NULL
);

-- Insert unique currencies

INSERT INTO warehouse.dimCurrency
(
    CurrencyCode
)
SELECT DISTINCT
    Currency
FROM clean.GeneralLedger
ORDER BY Currency;

-- Validate results

SELECT *
FROM warehouse.dimCurrency
ORDER BY CurrencyKey;