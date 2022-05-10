USE [CollectX]
GO

/****** Delete existing table - uncomment next 2 lines if this is desired. ******/
--DROP TABLE [dbo].[PI_Values]
--GO

/****** Create new empty Table ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PI_Values](
	[ValueKey] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemKey] [bigint] NOT NULL,
	[TagKey] [bigint] NOT NULL,
	[TagName] [nvarchar](50) NULL,
	[ComputerName] [nvarchar](50) NULL,
	[DateTime] [datetime] NOT NULL DEFAULT GETDATE(),
	[Value] [float] NOT NULL,
	[Done] [bit] NULL,
	[WhyThat] [timestamp] NULL,

CONSTRAINT [PK_PI_Values] PRIMARY KEY CLUSTERED 
(
	[ValueKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

