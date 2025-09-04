USE Restaurant;
GO

/*
	15. **Stored Procedure - Add New Order**:
    - **Procedure Name**: **`sp_AddNewOrder`**
    - **Purpose**: Streamline the process of adding a new order.
    - **Parameters**: **`ReservationId`**, **`EmployeeId`**, **`OrderDate`**, and **`TotalAmount`**.
    - **Implementation**: Check if the specified reservation and employee exist, if not, return an error message, if existing, add new order.
    - **Return**: The new **`BorrowerID`** or an error message.
*/

CREATE OR ALTER PROCEDURE Add_Order
(
    @ReservationId int,
    @EmployeeId int,
    @OrderDate DATETIME,
    @TotalAmount DECIMAL(10,2)
)
AS BEGIN
    DECLARE @IsExist int;
    SELECT @IsExist = Count(*)
    FROM Orders
    WHERE ReservationId = @ReservationId AND EmployeeId = @EmployeeId

    IF (@IsExist > 0) 
    BEGIN
        SELECT 'Row Already Exists for employee and reservation' AS ErrorMessage
    END
    ELSE 
    BEGIN
        INSERT INTO Orders VALUES (@ReservationId,@EmployeeId,@OrderDate,@TotalAmount)
        SELECT CONCAT('Added Order To Employee ' , @EmployeeId) AS SucessMessage
    END;
        
END;

GO

EXEC Add_Order 15,90,'2022-04-01',6412.2;