-- Drop statemnts at first to ensure that script run safely multiple times

DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS MenuItems;
DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Reservations;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Tables;


-- Start Of Create statements here 
-- Creation Of Tables Without Constraints

CREATE TABLE Restaurants ( 
    RestaurantId INT IDENTITY(1,1) PRIMARY KEY, -- Auto Increment Field
    Name VARCHAR(100), 
    Address VARCHAR(100), 
    PhoneNumber VARCHAR(20), 
    OpeningHours TIME, 
);

CREATE TABLE MenuItems (
    ItemId INT IDENTITY(1,1) PRIMARY KEY,
    RestaurantId INT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE OrderItems (
    OrderItemId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT,
    ItemId INT,
    Quantity INT
);

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    ReservationId INT,
    EmployeeId INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    RestaurantId INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50)
);

CREATE TABLE Reservations (
    ReservationId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT,
    RestaurantId INT,
    TableId INT,
    ReservationDate DATETIME,
    PartySize INT
);

CREATE TABLE Customers (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Tables (
    TableId INT IDENTITY(1,1) PRIMARY KEY,
    RestaurantId INT,
    Capacity INT
);