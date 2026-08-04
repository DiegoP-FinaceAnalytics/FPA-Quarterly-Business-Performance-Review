USE Northstar_FPnA;
GO
--Create Dimension For Terms

CREATE TABLE warehouse.dimTerms
(
    TermsKey INT IDENTITY(1,1) PRIMARY KEY,
    TermsName NVARCHAR(50) NOT NULL
);

-- Insert unique term values
INSERT INTO warehouse.dimTerms
(
    TermsName
)
SELECT DISTINCT
    Terms
FROM
(
    SELECT Terms
    FROM clean.AccountsReceivable

    UNION

    SELECT Terms
    FROM clean.AccountsPayable
) AS CombinedTerms
ORDER BY Terms;
-- Validate results

SELECT COUNT(*) AS TermsRecordCount
FROM warehouse.dimTerms;
