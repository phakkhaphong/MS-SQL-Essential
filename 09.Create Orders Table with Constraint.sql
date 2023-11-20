USE TestDB;
GO

CREATE TABLE Sales.Orders
(
	OrderID int IDENTITY(1,1) NOT NULL 
		CONSTRAINT PK_Orders PRIMARY KEY 
,	CustID int NOT NULL 
		CONSTRAINT FK_Orders_Customers 
		FOREIGN KEY(CustID) 
		REFERENCES Sales.Customers (CustID)
,	OrderDate datetime NOT NULL
,	Freight money NOT NULL 
		CONSTRAINT DFT_Orders_Freight  DEFAULT ((0))
) ;
GO