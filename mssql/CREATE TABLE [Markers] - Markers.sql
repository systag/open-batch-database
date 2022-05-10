USE [CollectX]
GO

/****** Delete existing table - uncomment next 2 lines if this is desired. ******/
--DROP TABLE [dbo].[BT_Journal]
--GO

/****** Create new empty Table ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BT_Marker](
	PrimKey [bigint] IDENTITY(1,1) NOT NULL,
	ComputerName [nvarchar](255) NULL,
	SystemNo [nvarchar](255) NOT NULL,
	SystemName [nvarchar](255) NULL,
	MarkerText [nvarchar](255) NULL,
	AssignedTo [nvarchar](32) NULL,
	ShowMarker [bit] DEFAULT 1,
	MarkerID [nvarchar](36) NOT NULL,
	TimeStamp [datetime] NULL,
	LastChangeTime timestamp NULL,
	LastChangeAction [tinyint] NULL,
	done [bit] DEFAULT 0,
CONSTRAINT [PK_BT_Marker] PRIMARY KEY CLUSTERED 
(
	[PrimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
