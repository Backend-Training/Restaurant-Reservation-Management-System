USE Restaurant;
GO

/*
	16. **SQL Stored Procedure with Temp Table**:
    - Design a stored procedure that retrieves all tables which have future reservations. 
	Store these tables in a temporary table, 
	then join this temp table with the **`Restaurants`** table to list out the specific information about the associated restaurants.
*/

CREATE OR ALTER PROCEDURE Tables_Future_Reservations
AS BEGIN
	
	DROP TABLE IF EXISTS FutureReservations_Temp;
	CREATE TABLE FutureReservations_Temp (
        TableId INT
    );

	INSERT INTO FutureReservations_Temp(TableId)
	SELECT TableId 
	FROM Reservations
	WHERE ReservationDate > GETDATE()
END;
GO

EXEC Tables_Future_Reservations;

-- Join The Temp Table With Reservation Table
SELECT * FROM FutureReservations_Temp T
JOIN Reservations R ON T.TableId = R.TableId;

DROP TABLE FutureReservations_Temp;
