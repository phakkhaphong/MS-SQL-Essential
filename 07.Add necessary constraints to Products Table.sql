USE TestDB;
GO

TRUNCATE TABLE Production.Products;
GO

DBCC CHECKIDENT ('Production.Products', RESEED, 1);
GO

ALTER TABLE Production.Products
ADD FOREIGN KEY(CategoryID) REFERENCES Production.ProductCategory (CategoryID);
GO

ALTER TABLE Production.Products
ADD  CONSTRAINT DF_StockQty DEFAULT 0 FOR StockQty;
GO
ALTER TABLE Production.Products
ADD  CONSTRAINT CK_StockQty CHECK ((StockQty>=(0)));
GO

-------Test
SELECT * FROM Production.ProductCategory

SELECT * FROM Production.Products
GO

--Test 1
INSERT INTO Production.Products
(ProductName,StockQty,CategoryID)
VALUES
	('Bike Wash - Dissolver',36,5)
GO

--Test 2
INSERT INTO Production.Products
(ProductName,StockQty,CategoryID)
VALUES
	('Bike Wash - Dissolver',-36,4)
GO
