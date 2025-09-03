use Restaurant;

-- Lists the orders placed on a specific given reservation along with the associated menu items.

-- Declare Reservation Id Variable
DECLARE @ReservationId int;
SET @ReservationId = 3;

SELECT Orders.OrderId,ReservationId,EmployeeId,MenuItems.Name,MenuItems.Price
FROM Orders 
LEFT JOIN OrderItems ON Orders.OrderId = OrderItems.OrderId
LEFT JOIN MenuItems ON OrderItems.ItemId = MenuItems.ItemId
WHERE ReservationId = @ReservationId;
