USE Restaurant;
GO

/*
14. **Stored Procedure - Borrowed Books Report**:
    - **Procedure Name**: **`sp_ResrvedTablesReport`**
    - **Purpose**: Generate a report of tables reserved within a specified date range.
    - **Parameters**: **`StartDate`**, **`EndDate`**
    - **Implementation**: Retrieve all tables reserved within the given range, with details like reservation date, party size and restaurant details.
    - **Return**: Tabulated report of reserved tables.
*/

 CREATE OR ALTER PROCEDURE Borrowed_Books
 (
    @StartDate DATETIME,
    @EndDate DATETIME
 )
 AS BEGIN
    SELECT * FROM Reservations
    WHERE ReservationDate BETWEEN @StartDate AND @EndDate
 END;
 GO

 EXEC dbo.Borrowed_Books '2022-04-01', '2024-04-01';
