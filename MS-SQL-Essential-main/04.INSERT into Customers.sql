USE TestDB;
GO

INSERT INTO Sales.Customers 
(CompanyName,ContactName,ContactTitle,[Address],City,Region,PostalCode,Country,Phone)
VALUES
	(	
		'Data Meccanica Co.,Ltd.','Phakkhaphong K.','Owner'
	,	'109/6 M9','Paris',NULL,10058,'France','(66) 789-0123'
	)
,	(
		'Jaidee Co.,Ltd.','Somchai S.','Purchasing Assistant Manager'
	,	'9999','Nonthaburi',NULL,11120,'THAILAND','(66) 878-1234'
	)
;

