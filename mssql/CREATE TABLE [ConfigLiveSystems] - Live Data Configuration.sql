USE [CollectX]
GO

/****** Delete existing table - uncomment next 2 lines if this is desired. ******/
--DROP TABLE [dbo].[PI_System]
--GO

/****** Create new empty Table ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PI_System](
	[SystemKey] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemDescription] [nvarchar](50) NULL,
	[SystemEnabled] [bit] NOT NULL,
	[ComputerName] [nvarchar](50) NOT NULL,
	[LaborName] [nvarchar](50) NULL,
	[WhyThat] [timestamp] NULL,
 CONSTRAINT [PK_PI_Plant] PRIMARY KEY CLUSTERED 
(
	[SystemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
