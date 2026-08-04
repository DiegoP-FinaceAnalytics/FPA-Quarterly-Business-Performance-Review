USE Northstar_FPnA;
GO

-- Create Status Dimension

CREATE TABLE warehouse.dimStatus
(
    StatusKey INT IDENTITY(1,1) PRIMARY KEY,
    StatusName NVARCHAR(50) NOT NULL
);
GO

-- Insert unique statuses from Accounts Receivable and Accounts Payable

INSERT INTO warehouse.dimStatus
(
    StatusName
)
SELECT
    Status
FROM
(
    SELECT
        Status
    FROM clean.AccountsReceivable

    UNION

    SELECT
        Status
    FROM clean.AccountsPayable
) AS CombinedStatuses
ORDER BY Status;
GO

-- Validate Results

SELECT *
FROM warehouse.dimStatus
ORDER BY StatusName;
GO