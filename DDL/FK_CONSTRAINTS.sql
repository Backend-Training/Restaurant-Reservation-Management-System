/* 
    Foreign Key Constraints 
    Drop Statemnts Before Each FK Constraint to ensure the script run safely multiple times
*/

-- MenuItems -> Restaurants
ALTER TABLE MenuItems DROP CONSTRAINT IF EXISTS FK_RestaurantId;
ALTER TABLE MenuItems ADD CONSTRAINT FK_RestaurantId
FOREIGN KEY (RestaurantId) REFERENCES Restaurants(RestaurantId);

-- Orders -> Reservations
ALTER TABLE Orders DROP CONSTRAINT IF EXISTS FK_ReservationId;
ALTER TABLE Orders ADD CONSTRAINT FK_ReservationId
FOREIGN KEY (ReservationId) REFERENCES Reservations(ReservationId);

-- Orders -> Employees
ALTER TABLE Orders DROP CONSTRAINT IF EXISTS FK_EmployeeId;
ALTER TABLE Orders ADD CONSTRAINT FK_EmployeeId
FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId);

-- OrderItems -> Orders
ALTER TABLE OrderItems DROP CONSTRAINT IF EXISTS FK_OrderId;
ALTER TABLE OrderItems ADD CONSTRAINT FK_OrderId
FOREIGN KEY (OrderId) REFERENCES Orders(OrderId);

-- OrderItems -> MenuItems
ALTER TABLE OrderItems DROP CONSTRAINT IF EXISTS FK_ItemId;
ALTER TABLE OrderItems ADD CONSTRAINT FK_ItemId
FOREIGN KEY (ItemId) REFERENCES MenuItems(ItemId);

-- Employees -> Restaurants
ALTER TABLE Employees DROP CONSTRAINT IF EXISTS FK_RestaurantId_Employees;
ALTER TABLE Employees ADD CONSTRAINT FK_RestaurantId_Employees
FOREIGN KEY (RestaurantId) REFERENCES Restaurants(RestaurantId);

-- Reservations -> Customers
ALTER TABLE Reservations DROP CONSTRAINT IF EXISTS FK_CustomerId;
ALTER TABLE Reservations ADD CONSTRAINT FK_CustomerId
FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId);

-- Reservations -> Restaurants
ALTER TABLE Reservations DROP CONSTRAINT IF EXISTS FK_RestaurantId_Reservations;
ALTER TABLE Reservations ADD CONSTRAINT FK_RestaurantId_Reservations
FOREIGN KEY (RestaurantId) REFERENCES Restaurants(RestaurantId);

-- Reservations -> Tables
ALTER TABLE Reservations DROP CONSTRAINT IF EXISTS FK_TableId;
ALTER TABLE Reservations ADD CONSTRAINT FK_TableId
FOREIGN KEY (TableId) REFERENCES Tables(TableId);

-- Tables -> Restaurants
ALTER TABLE Tables DROP CONSTRAINT IF EXISTS FK_RestaurantId_Tables;
ALTER TABLE Tables ADD CONSTRAINT FK_RestaurantId_Tables
FOREIGN KEY (RestaurantId) REFERENCES Restaurants(RestaurantId);