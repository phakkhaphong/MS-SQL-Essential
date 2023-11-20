USE TestDB;
GO

CREATE FUNCTION Production.vwGetProductByCatID(@catid int)RETURNS TABLE
AS
	RETURN
		SELECT * FROM Production.Products
		WHERE CategoryID=@catid
;

