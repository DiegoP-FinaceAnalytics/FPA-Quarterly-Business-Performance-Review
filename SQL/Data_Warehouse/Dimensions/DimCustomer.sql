USE Northstar_FPnA;
GO

-- Create Customer Dimension

CREATE TABLE warehouse.dimCustomer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(255) NOT NULL
);
GO

-- Insert unique customers

INSERT INTO warehouse.dimCustomer
(
    CustomerName
)
SELECT DISTINCT
    Customer
FROM clean.AccountsReceivable
ORDER BY Customer;
GO

-- Validate results

SELECT *
FROM warehouse.dimCustomer
ORDER BY CustomerName;
GO