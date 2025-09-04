USE Restaurant;
GO

/*
	Design a trigger to log an entry into a separate AuditLog table whenever a table get reserved.
	The AuditLog should capture ResturantId, TableId, ReservationDate and ChangeDate.
*/

DROP TABLE IF EXISTS AuditLog;
CREATE TABLE AuditLog (
	RestaurantId INT,
	TableId INT,
	ReservationDate DATETIME,
);
GO

CREATE OR ALTER TRIGGER Table_Reserve_Log
ON Reservations
AFTER INSERT
AS
BEGIN

	PRINT 'Firing Table Reserve Log Trigger';
	INSERT INTO AuditLog (RestaurantId, TableId, ReservationDate)
    SELECT i.RestaurantId, i.TableId, i.ReservationDate
    FROM INSERTED i;

END;
GO

-- For Testing You can Remove these statements
insert into Reservations (CustomerId, RestaurantId, TableId, ReservationDate, PartySize) 
values (235, 6, 36, '9/7/2024', 44);

select * from AuditLog;

