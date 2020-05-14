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

