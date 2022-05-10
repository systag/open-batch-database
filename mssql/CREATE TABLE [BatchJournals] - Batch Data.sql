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

CREATE TABLE [dbo].[BT_Journal](
	[PrimKey] [bigint] IDENTITY(1,1) NOT NULL,
	[ComputerName] [nvarchar](255) NULL,
	[SystemNo] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NULL,
	[PlantName] [nvarchar](255) NULL,
	[ExperimentName] [nvarchar](255) NULL,
	[ExperimentFolder] [nvarchar](255) NULL,
	[ExperimentKey] [bigint] NULL,
	[ReportClass] [tinyint] NULL,
	[ReportLevel] [tinyint] NULL,
	[TimeStamp] [datetime] NULL,
	[ReportText] [nvarchar](2046) NULL,
	[EventFrame] [nvarchar](255) NULL,
	[done] [bit] NOT NULL default 0,

CONSTRAINT [PK_BT_Journal] PRIMARY KEY CLUSTERED 
(
	[PrimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
