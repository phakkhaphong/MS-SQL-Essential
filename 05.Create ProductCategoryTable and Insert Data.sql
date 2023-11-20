USE TestDB;
GO

CREATE SCHEMA Production;
GO

CREATE TABLE Production.ProductCategory
(
	CategoryID int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_CategoryID PRIMARY KEY
,	CategoryName nvarchar(50) NOT NULL
);
GO

INSERT INTO Production.ProductCategory (CategoryName)
VALUES
	('Bikes'),('Components'),('Clothing'),('Accessories')
GO
