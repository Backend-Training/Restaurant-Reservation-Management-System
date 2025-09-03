use Restaurant;

-- Variable Declartion for CustomerId
DECLARE @CustomerId INT;
SET @CustomerId = 4; -- Put here any id

-- Retrieve all reservations for a specific customers.
SELECT * FROM Reservations WHERE CustomerId = @CustomerId;