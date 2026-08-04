USE Northstar_FPnA;
GO

-- Create Cost Center Dimension

CREATE TABLE warehouse.dimCostCenter
(
    CostCenterKey INT IDENTITY(1,1) PRIMARY KEY,
    CostCenterName NVARCHAR(255) NOT NULL
);

-- Insert unique cost centers

INSERT INTO warehouse.dimCostCenter
(
    CostCenterName
)
SELECT DISTINCT
    CostCenter
FROM clean.GeneralLedger
ORDER BY CostCenter;

-- Validate results

SELECT *
FROM warehouse.dimCostCenter
ORDER BY CostCenterKey;