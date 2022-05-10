USE [master]
GO

/****** Delete existing server login - uncomment next 2 lines if this is desired. ******/
--DROP LOGIN [SYSTAG]
--GO

/****** Create Server Login ******/
-- change the password!!! 
CREATE LOGIN [SYSTAG] WITH PASSWORD='****************', DEFAULT_DATABASE=[CollectX], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO


USE [CollectX]
GO

/****** Delete existing db user - uncomment next 2 lines if this is desired. ******/
--DROP USER [SYSTAG]
--GO

/****** Create user for this database ******/
CREATE USER [SYSTAG] FOR LOGIN [SYSTAG] WITH DEFAULT_SCHEMA=[dbo]
GO

-- Grant rights to insert data and delete entries, which have been marked as done. 
ALTER ROLE [db_datawriter] ADD MEMBER [SYSTAG]
ALTER ROLE [db_datareader] ADD MEMBER [SYSTAG]
