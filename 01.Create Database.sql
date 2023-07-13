USE master;
GO

CREATE DATABASE TestDB
 ON   
	(	
		NAME = N'TestDB', FILENAME = N'C:\TestDB\TestDB.mdf' 
	,	SIZE = 102400KB , FILEGROWTH = 0
	)
 LOG ON 
	( 
		NAME = N'TestDB_log', FILENAME = N'C:\TestDB\TestDB_log.ldf' 
	,	SIZE = 102400KB , FILEGROWTH = 0
	)
GO

ALTER DATABASE [TestDB] SET RECOVERY SIMPLE 
GO

