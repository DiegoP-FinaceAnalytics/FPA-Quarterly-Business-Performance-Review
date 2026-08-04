USE Northstar_FPnA;
GO

-- Create Department Dimension

CREATE TABLE warehouse.dimDepartment
(
    DepartmentKey INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(255) NOT NULL
);

-- Insert unique departments

INSERT INTO warehouse.dimDepartment
(
    DepartmentName
)
SELECT DISTINCT
    Dept
FROM clean.GeneralLedger;

-- Validate results

SELECT *
FROM warehouse.dimDepartment
ORDER BY DepartmentKey;