USE Restaurant;
GO

dbcc freeproccache; -- Free All The Query Plan Cache

 -- Query 1
EXEC dbo.Table_Reports '04-04-2022','04-04-2024';

-- Query 2
EXEC dbo.Tables_Future_Reservations;

-- Query 3
SELECT dbo.Calculate_Employee_Salary(40) AS Salary;

-- Query 4
SELECT * FROM [Reservations Report];

-- Query 5
SELECT * FROM [Employee Details With Resturants];

-- Query 6

-- Variable Declartion for CustomerId
DECLARE @CustomerId INT;
SET @CustomerId = 4; -- Put here any id

-- Retrieve all reservations for a specific customers.
SELECT * FROM Reservations WHERE CustomerId = @CustomerId;

SELECT * FROM PlanCache;