USE Restaurant;
GO

/*
14. **Stored Procedure - TABLE Report**:
    - **Procedure Name**: **`sp_ResrvedTablesReport`**
    - **Purpose**: Generate a report of tables reserved within a specified date range.
    - **Parameters**: **`StartDate`**, **`EndDate`**
    - **Implementation**: Retrieve all tables reserved within the given range, with details like reservation date, party size and restaurant details.
    - **Return**: Tabulated report of reserved tables.
*/

 CREATE OR ALTER PROCEDURE Table_Reports
 (
    @StartDate DATETIME,
    @EndDate DATETIME
 )
 AS BEGIN
    SELECT T.TableId,ReservationId,R.RestaurantId,ReservationDate,PartySize 
    FROM Reservations R
    INNER JOIN Tables T ON T.TableId = R.TableId
    WHERE ReservationDate BETWEEN @StartDate AND @EndDate
 END;
 GO

 EXEC dbo.Table_Reports '2022-04-01', '2024-04-01';
