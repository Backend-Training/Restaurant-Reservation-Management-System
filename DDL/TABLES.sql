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
    RestaurantId INT PRIMARY KEY, 
    Name VARCHAR(100), 
    Address VARCHAR(100), 
    PhoneNumber VARCHAR(20), 
    OpeningHours TIME, 
);

CREATE TABLE MenuItems (
    ItemId INT PRIMARY KEY,
    RestaurantId INT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE OrderItems (
    OrderItemId INT PRIMARY KEY,
    OrderId INT,
    ItemId INT,
    Quantity INT
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    ReservationId INT,
    EmployeeId INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE Employees (
    EmployeeId INT PRIMARY KEY,
    RestaurantId INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50)
);

CREATE TABLE Reservations (
    ReservationId INT PRIMARY KEY,
    CustomerId INT,
    RestaurantId INT,
    TableId INT,
    ReservationDate DATETIME,
    PartySize INT
);

CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Tables (
    TableId INT PRIMARY KEY,
    RestaurantId INT,
    Capacity INT
);