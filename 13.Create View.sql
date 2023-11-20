USE TestDB;
GO

CREATE VIEW Production.vwGetAccessories
AS
	SELECT * FROM Production.Products
	WHERE CategoryID=4
;

