CREATE INDEX Reservations_CustomerId 
ON Reservations(CustomerId);

CREATE INDEX Reservations_TableId_ReservationDate
ON Reservations(TableId, ReservationDate);

