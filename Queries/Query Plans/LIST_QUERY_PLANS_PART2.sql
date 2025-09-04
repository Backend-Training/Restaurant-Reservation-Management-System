
-- Investigate Query Plan #1 To Test Index On Customer Id
SELECT CustomerId,RestaurantId FROM Reservations
WHERE CustomerId = 2;

-- Investigate Query Plan #2 To Test Index On Position
SELECT Position FROM Employees WHERE Position = 'Professor';

-- Investigate Query Plan #3 To Test Index On EmployeeId
SELECT EmployeeId From Orders WHERE EmployeeId = 3;


-- Investigate Query Plan #4 To Test Index On TableId & Reservation Date
EXEC dbo.Table_Reports '2022-04-01', '2023-04-01';

SELECT * FROM PlanCache;

