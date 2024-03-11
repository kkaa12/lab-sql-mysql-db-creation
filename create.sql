CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
	Car_ID INT AUTO_INCREMENT PRIMARY KEY,
	VIN VARCHAR(20), 
	Manufacturer VARCHAR (50), 
	Model VARCHAR(50), 
	Year INT, 
	color VARCHAR(30)
);

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
	Customer_PK INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT, 
	Name VARCHAR(70), 
	PhoneNumber VARCHAR(30), 
	Email VARCHAR(80), 
	Address VARCHAR(100),
	City VARCHAR(50), 
	StateProvince VARCHAR(50), 
	Country VARCHAR(50), 
	PostalCode VARCHAR(10)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
    Staff_PK INT AUTO_INCREMENT PRIMARY KEY,
    Staff_ID INT,
    Name VARCHAR(70),
    Store VARCHAR(100)
    );

DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    InvoiceNumber INT PRIMARY KEY,
    InvoiceDate DATE,
    Car_ID VARCHAR(17) REFERENCES Cars(Car_ID),
    Customer_PK INT REFERENCES Customers(Customer_PK),
    Staff_PK INT REFERENCES Salespersons(Staff_PK)
    );
