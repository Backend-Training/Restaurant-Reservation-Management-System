USE Restaurant;
GO

-- Use a view to list all employees information including their restaurants details

CREATE OR ALTER VIEW [Employee Details With Resturants] AS
SELECT FirstName,LastName,Position,
Restaurants.Name As ResturantName,Restaurants.Address As ResturantAdress
FROM Employees
INNER JOIN Restaurants ON Restaurants.RestaurantId = Employees.RestaurantId;

GO

SELECT * FROM [Employee Details With Resturants];