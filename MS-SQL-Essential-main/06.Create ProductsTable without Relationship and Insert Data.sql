USE TestDB;

CREATE TABLE Production.Products
(
	ProductID int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_ProductID PRIMARY KEY
,	ProductName nvarchar(50) NOT NULL
,	StockQty smallint NOT NULL
,	CategoryID int
);
GO

INSERT INTO Production.Products
(ProductName,StockQty,CategoryID)
VALUES
	('Bike Wash - Dissolver',-36,5)
GO

