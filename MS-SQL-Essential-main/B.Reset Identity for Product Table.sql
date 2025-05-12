DELETE [Production].[Products]
DBCC CHECKIDENT ('Production.Products', RESEED, 0);
GO

DELETE [Sales].[Orders]
DBCC CHECKIDENT ('Sales.Orders', RESEED, 0);
GO

INSERT INTO Production.Products
(ProductName,StockQty,CategoryID)
VALUES
	('Road-150 Red, 62',9,1)
,	('Road-150 Red, 44',4,1)
,	('Rear Derailleur',12,2)
,	('Rear Brakes',34,2)
,	('Men Sports Shorts, XL',70,3)
,	('Women Tights, S',40,3)
,	('Bike Wash - Dissolver',36,4)
,	('Mountain Tire Tube',15,4)
GO

SELECT * FROM Production.Products