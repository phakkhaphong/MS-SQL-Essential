USE TestDB;
GO

CREATE SCHEMA Sales;
GO

CREATE TABLE Sales.Customers
(
	CustID int IDENTITY(1,1) NOT NULL 
		CONSTRAINT PK_Customers PRIMARY KEY
,	CompanyName nvarchar(40) NOT NULL
,	ContactName nvarchar(30) NOT NULL
,	ContactTitle nvarchar(30) NOT NULL
,	[Address] nvarchar(60) NOT NULL
,	City nvarchar(15) NOT NULL
,	Region nvarchar(15) NULL
,	PostalCode nvarchar(10) NULL
,	Country nvarchar(15) NOT NULL
,	Phone nvarchar(24) NOT NULL
);
GO