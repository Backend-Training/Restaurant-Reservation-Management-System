use Restaurant;

-- Lists the menu items ordered by a specific reservation.

-- Declare Reservation Id Variable
DECLARE @ReservationId int;
SET @ReservationId = 3;

SELECT ReservationId,MenuItems.Name,MenuItems.Price
FROM Orders 
LEFT JOIN OrderItems ON Orders.OrderId = OrderItems.OrderId
LEFT JOIN MenuItems ON OrderItems.ItemId = MenuItems.ItemId
WHERE ReservationId = @ReservationId;
