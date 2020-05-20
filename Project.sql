USE [master]
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Project_Topic10')
DROP DATABASE [Project_Topic10]
GO
CREATE DATABASE Project_Topic10 
CONTAINMENT = NONE
GO
USE [Project_Topic10]
CREATE TABLE userInformation(
    userName VARCHAR(30) PRIMARY KEY,
    userFirstName VARCHAR(20),
    userLastName VARCHAR(20),
    pass VARCHAR(20) 
)

CREATE TABLE item (
  itemID INTEGER IDENTITY(101,1) NOT NULL PRIMARY KEY,
  itemName VARCHAR(255) NOT NULL,
  itemType VARCHAR(20),
  itemDescription VARCHAR(512),
  itemQuantity INT,
  itemPrice REAL
);
CREATE TABLE customers (
  id INTEGER IDENTITY(1001,1) NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE orders (
  id INTEGER IDENTITY(10001,1) NOT NULL PRIMARY KEY,
  order_date DATE NOT NULL,
  purchaser INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  FOREIGN KEY (purchaser) REFERENCES customers(id),
  FOREIGN KEY (product_id) REFERENCES item(itemID)
);
CREATE TABLE Suppliers(
	supName VARCHAR(30) NOT NULL PRIMARY KEY,
	supItem VARCHAR(20) NOT NULL,
    supAddress VARCHAR(30) NOT NULL,
    supMobile VARCHAR(30) NOT NULL, 
    supEmail VARCHAR(20) NOT NULL
)
CREATE TABLE Inventory(
	invenID INT NOT NULL PRIMARY KEY,
	invenName VARCHAR(20) NOT NULL 
) 
CREATE TABLE Payment(
	paymentID INT NOT NULL PRIMARY KEY,
	paymentAmount INT NOT NULL,
    paymentDate VARCHAR(30) NOT NULL
)
