USE Northstar_FPnA;
GO

-- Create Vendor Dimension

CREATE TABLE warehouse.dimVendor
(
    VendorKey INT IDENTITY(1,1) PRIMARY KEY,
    VendorName NVARCHAR(255) NOT NULL
);
GO

-- Insert unique vendors

INSERT INTO warehouse.dimVendor
(
    VendorName
)
SELECT DISTINCT
    Vendor
FROM clean.AccountsPayable
ORDER BY Vendor;
GO

-- Validate results

SELECT *
FROM warehouse.dimVendor
ORDER BY VendorName;
GO