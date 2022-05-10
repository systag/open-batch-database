USE [master]
GO

/****** Delete existing database - uncomment next 2 lines if this is desired. ******/
--DROP DATABASE [CollectX]
--GO

/****** Create new empty database ******/
CREATE DATABASE [CollectX]
CONTAINMENT = NONE

-- By default, MS-SQL Server creates database files inside the C:\Program Files\MS SQL Server\<version>\MSSQL\DATA folder. 
-- This is fine for most installations, since you never need to access these files directly. 
-- If you prefer to store these files somewhere else, uncomment the next 4 lines and adapt the 2 paths (the folder must exist beforehand). 
--ON  PRIMARY 
--( NAME = N'CollectX', FILENAME = N'F:\MSSQL-Data\CollectX.mdf')
--LOG ON 
--( NAME = N'CollectX_log', FILENAME = N'F:\MSSQL-Data\CollectX.ldf')

GO

-- Set database and file options. If used as a buffer database, you might want to limit the MAXSIZE to some value between 5-10 GB. 
ALTER DATABASE [CollectX]
MODIFY FILE ( NAME = N'CollectX', SIZE = 1GB , MAXSIZE = UNLIMITED, FILEGROWTH = 512MB )
GO

ALTER DATABASE [CollectX]
MODIFY FILE ( NAME = N'CollectX_log', SIZE = 512MB , MAXSIZE = 20GB , FILEGROWTH = 512MB)
GO


-- Do not change anything below this point, unless you know what you are doing. 


ALTER DATABASE [CollectX] SET COMPATIBILITY_LEVEL = 100
GO


-- recovery model simple - disables transaction log  - recommended (unless you know what you are doing)
ALTER DATABASE [CollectX] SET RECOVERY SIMPLE 
GO


-- adapt to your needs. Recommend OFF for production database
ALTER DATABASE [CollectX] SET AUTO_SHRINK OFF 
GO


-- usually not needed - set off
ALTER DATABASE [CollectX] SET DB_CHAINING OFF 
GO


-- NULL handling - leave as is (unless you know what you are doing)
ALTER DATABASE [CollectX] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CollectX] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CollectX] SET ANSI_WARNINGS OFF 
GO


-- Behaviour on mathematic errors
ALTER DATABASE [CollectX] SET ARITHABORT ON
GO

ALTER DATABASE [CollectX] SET NUMERIC_ROUNDABORT OFF
GO


-- optimisations (MS defaults)
ALTER DATABASE [CollectX] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CollectX] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [CollectX] SET AUTO_UPDATE_STATISTICS ON 
GO


-- options for recovery and rollback (MS defaults)
ALTER DATABASE [CollectX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CollectX] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CollectX] SET PAGE_VERIFY CHECKSUM  
GO


-- more defaults recommended(?) by MS
ALTER DATABASE [CollectX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CollectX] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CollectX] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CollectX] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CollectX] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CollectX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CollectX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CollectX] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CollectX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CollectX] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CollectX] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CollectX] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CollectX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CollectX] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO


-- make sure the DB will be online. 
ALTER DATABASE [CollectX] SET  READ_WRITE 
GO

ALTER DATABASE [CollectX] SET  MULTI_USER 
GO

ALTER DATABASE [CollectX] SET ONLINE
GO


