use Restaurant;
GO
--  Identify the most popular menu item for each restaurant for a given month.

WITH ItemCount AS(

	SELECT RestaurantId,o.OrderId,OrderDate,m.ItemId,
	COUNT(*) OVER (PARTITION BY RestaurantId,m.ItemId) AS ItemCount
	FROM Orders o
	INNER  JOIN OrderItems ot ON o.OrderId = ot.OrderId
	INNER  JOIN MenuItems m ON ot.ItemId = m.ItemId

)

SELECT RestaurantId,ItemId,
RANK() OVER (
PARTITION BY RestaurantId
ORDER BY ItemCount DESC
) AS [Item Rank]
FROM ItemCount 
WHERE OrderDate BETWEEN '2022-03-01' AND '2022-03-31'
ORDER BY RestaurantId;

-- We could also cover this query in cte and use it another time
