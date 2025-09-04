USE Restaurant;
GO

/*
12. **Database Function - Calculate Restaurant Revenue**:
    - **Function Name**: **`fn_CalculateRevenue`**
    - **Purpose**: Compute revenue made by a specific restaurant.
    - **Parameter**: `RestaurantId`
    - **Return**: total revenue amount for the `RestaurantId` .
*/

CREATE OR ALTER FUNCTION Restaurant_Revenue
(
    @RestaurantId INT
)
RETURNS INT
AS
BEGIN
    DECLARE @totalRevenue INT;
    SELECT @totalRevenue = SUM(Price)
    FROM MenuItems
    WHERE RestaurantId = @RestaurantId;

    RETURN @totalRevenue;
END;
GO
-- Use of the function

SELECT dbo.Restaurant_Revenue(1) AS TOTAL_REVENUE;
