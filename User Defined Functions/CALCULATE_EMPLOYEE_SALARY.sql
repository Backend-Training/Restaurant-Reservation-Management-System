USE Restaurant
GO

/*
	13. **Database Function - Calculate Employees Salary**:
    - **Function Name**: **`fn_CalculateEmployeeSalary`**
    - **Purpose**: Compute the salary for a given employee.
    - **Parameter**: `EmployeeId`
    - **Implementation**: Salary is defined as: # number of orders made by specific employee * employee rank.
        - Employee’s rank based on position: Position = `VIPOrdersWaiter` = 5, `StandardWaiter` = 4, `AssistantWaiter`  = 3.
    - **Return**: salary for the `EmployeeId`.
*/

CREATE OR ALTER FUNCTION Calculate_Employee_Salary
(
    @EmployeeId int
)
RETURNS INT AS
BEGIN

DECLARE @numberOfOrders int;
DECLARE @salary int;
DECLARE @position varchar(100);
DECLARE @rank int;

-- Get Number Of Orders
SELECT @numberOfOrders = COUNT(*)
FROM Orders
WHERE EmployeeId = @EmployeeId

-- Get Position Of Employee
SELECT @position = Position
FROM Employees
WHERE EmployeeId = @EmployeeId;

-- Get Rank Of Employee
IF (@position = 'VIPOrdersWaiter') SET @rank = 5;
IF (@position = 'StandardWaiter') SET @rank = 4;
IF (@position = 'AssistantWaiter') SET @rank = 3;

-- Calculate Salary
SET @salary = @rank * @numberOfOrders;
RETURN @salary;
END;

GO

SELECT dbo.Calculate_Employee_Salary(40) AS Salary;