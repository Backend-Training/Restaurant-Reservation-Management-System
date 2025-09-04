USE Restaurant;
GO

--  Identify reservations which have 2 or more orders using CTEs.

WITH [Reservation Order] (ReservationId,COUNT) 
AS
(SELECT ReservationId, COUNT(OrderId) FROM Orders
GROUP BY ReservationId
HAVING COUNT(OrderId) > 2)

SELECT * FROM [Reservation Order];