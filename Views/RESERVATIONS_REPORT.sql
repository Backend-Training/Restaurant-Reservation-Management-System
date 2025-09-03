use Restaurant;
GO

--  Use a view to list all reservations information including restaurants and customers information. 

CREATE OR ALTER VIEW [Reservations Report] AS 
SELECT 
ReservationId,PartySize,Email,FirstName,LastName,
Restaurants.Name As ResturantName
FROM Reservations
INNER JOIN Customers ON Reservations.CustomerId = Customers.CustomerId
INNER JOIN Restaurants ON Restaurants.RestaurantId = Reservations.RestaurantId
;
GO

SELECT * FROM [Reservations Report];


