USE Restaurant;
GO

-- Retrieve Employees details with View

CREATE OR ALTER VIEW [Employee Details] AS
SELECT * FROM Employees
GO

SELECT * FROM [Employee Details];