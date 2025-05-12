USE TestDB;
GO

CREATE TABLE Sales.OrderDetails
(
	OrderID int NOT NULL 
		CONSTRAINT FK_OrderDetails_Orders 
		FOREIGN KEY(orderid) 
		REFERENCES Sales.Orders (orderid)
,	ProductID int NOT NULL 
		CONSTRAINT FK_OrderDetails_Products 
		FOREIGN KEY(productid) 
		REFERENCES Production.Products (productid)
,	UnitPrice money NOT NULL 
		CONSTRAINT DFT_OrderDetails_unitprice  
		DEFAULT ((0)) 
,	Quantity smallint NOT NULL 
		CONSTRAINT DFT_OrderDetails_Quantity  
		DEFAULT ((1)) 
,	Discount numeric(4,3) NOT NULL 
		CONSTRAINT DFT_OrderDetails_discount  
		DEFAULT ((0)) 

,	CONSTRAINT PK_OrderDetails PRIMARY KEY  
	(
		orderid ASC,
		productid ASC
	)
);