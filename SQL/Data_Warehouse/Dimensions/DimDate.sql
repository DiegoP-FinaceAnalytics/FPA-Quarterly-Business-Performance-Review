USE Northstar_FPnA;
GO

-- Check to see if it exists
DROP TABLE IF EXISTS warehouse.dimDate;
GO


-- Create Date Dimension
CREATE TABLE warehouse.dimDate
(
    DateKey int NOT NULL,
    FullDate date NOT NULL,
    DayNumber int NOT NULL,
    DayName varchar(10) NOT NULL,
    MonthNumber int NOT NULL,
    MonthName varchar(10) NOT NULL,
    QuarterNumber int NOT NULL,
    QuarterName varchar(2) NOT NULL,
    CalendarYear int NOT NULL,

    CONSTRAINT PK_dimDate
        PRIMARY KEY (DateKey)
);
GO

-- Date Loop
DECLARE @StartDate date = '2023-01-01';
DECLARE @EndDate date = '2025-12-31';

WHILE @StartDate <= @EndDate
BEGIN

-- Insert unique date values
    INSERT INTO warehouse.dimDate
    (
        DateKey,
        FullDate,
        DayNumber,
        DayName,
        MonthNumber,
        MonthName,
        QuarterNumber,
        QuarterName,
        CalendarYear
    )
    VALUES
    (
        CONVERT(int, CONVERT(char(8), @StartDate, 112)),
        @StartDate,
        DAY(@StartDate),
        DATENAME(weekday, @StartDate),
        MONTH(@StartDate),
        DATENAME(month, @StartDate),
        DATEPART(quarter, @StartDate),
        'Q' + CAST(DATEPART(quarter, @StartDate) AS varchar(1)),
        YEAR(@StartDate)
    );

    SET @StartDate = DATEADD(day, 1, @StartDate);
END;
GO

-- Validate results


SELECT COUNT(*) AS DateRowCount
FROM warehouse.dimDate;
GO

SELECT TOP (10) *
FROM warehouse.dimDate
ORDER BY FullDate;
GO