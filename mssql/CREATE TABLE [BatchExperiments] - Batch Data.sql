USE [CollectX]
GO

/****** Delete existing table - uncomment next 2 lines if this is desired. ******/
--DROP TABLE [dbo].[BatchExperiments]
--GO

/****** Create new empty Table ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BatchExperiments](
	[PrimKey] [bigint] IDENTITY(1,1) NOT NULL,
	[ComputerName] [nvarchar](255) NULL,
	[SystemNo] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NULL,
	[PlantName] [nvarchar](255) NULL,
	[ExperimentName] [nvarchar](255) NULL,
	[ExperimentFolder] [nvarchar](255) NULL,
	[ExperimentStart] [datetime] NOT NULL,
	[ExperimentEnd] [datetime] NOT NULL,
	[done] [bit] NOT NULL default 0,

CONSTRAINT [PK_BatchExperiments] PRIMARY KEY CLUSTERED 
(
	[PrimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
