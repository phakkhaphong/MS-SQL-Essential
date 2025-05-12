USE TestDB
GO

DELETE Sales.OrderDetails;
DELETE Sales.Orders;
DELETE Sales.Customers WHERE CompanyName='Suk Jai Co.,Ltd.';
GO

SET XACT_ABORT ON
BEGIN TRANSACTION
	INSERT INTO Sales.Customers 
	(
		CompanyName,ContactName,ContactTitle,[Address],City
	,	Region,PostalCode,Country,Phone
	)
	VALUES
	(	
		'Suk Jai Co.,Ltd.','Somsri R.','Owner','99/8 M1','Pitsanuloke'
	,	NULL,65210,'THAILAND','(66) 766-0987'
	)

	INSERT INTO Sales.Orders (CustID,OrderDate,Freight)
	VALUES (@@IDENTITY,GETDATE(),32.38);

	INSERT INTO Sales.OrderDetails 
	(OrderID,ProductID,UnitPrice,Quantity,Discount)
	VALUES
		(@@IDENTITY,1,50000.00,1,0.1)
	,	(@@IDENTITY,7,450.00,39,0)
	,	(@@IDENTITY,8,1100.00,3,0);

	UPDATE Production.Products SET StockQty=StockQty-1 WHERE productid=1;
	UPDATE Production.Products SET StockQty=StockQty-39 WHERE productid=7;
	UPDATE Production.Products SET StockQty=StockQty-3 WHERE productid=8;
COMMIT TRANSACTION
SET XACT_ABORT OFF
GO
