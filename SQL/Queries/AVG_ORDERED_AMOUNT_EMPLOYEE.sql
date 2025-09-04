use Restaurant;

-- Calculate the average order amount made through a specific employee

-- Variable Delcartion For Specfic Employee
DECLARE @EmployeeId int;
SET @EmployeeId = 20;


SELECT EmployeeId, AVG(TotalAmount) AS AvgOrderAmount
FROM Orders
WHERE EmployeeId = @EmployeeId
GROUP BY EmployeeId
;

