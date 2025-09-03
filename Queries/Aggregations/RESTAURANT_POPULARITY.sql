USE Restaurant;
GO

-- Rank restaurants by the reservation frequency.

SELECT RestaurantId, COUNT(ReservationId) AS [Total Reservations] 
FROM Reservations
GROUP BY RestaurantId
ORDER BY COUNT(ReservationId) DESC;