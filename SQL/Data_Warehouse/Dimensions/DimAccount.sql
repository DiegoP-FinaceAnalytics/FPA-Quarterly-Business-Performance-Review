USE Northstar_FPnA;
GO

-- Create Account Dimension

CREATE TABLE warehouse.dimAccount
(
    AccountKey INT IDENTITY(1,1) PRIMARY KEY,
    AccountNumber NVARCHAR(50) NOT NULL,
    AccountName NVARCHAR(255) NOT NULL
);

-- Insert unique accounts

INSERT INTO warehouse.dimAccount
(
    AccountNumber,
    AccountName
)
SELECT DISTINCT
    AccountNumber,
    AccountName
FROM clean.GeneralLedger;

-- Validate results

SELECT *
FROM warehouse.dimAccount
ORDER BY AccountKey;