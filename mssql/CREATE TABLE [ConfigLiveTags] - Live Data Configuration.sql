USE [CollectX]
GO

/****** Delete existing table - uncomment next 2 lines if this is desired. ******/
--DROP TABLE [dbo].[PI_Tags]
--GO

/****** Create new empty Table ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PI_Tags](
	[TagKey] [bigint] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](50) NOT NULL,
	[TagDescription] [nvarchar](50) NULL,
	[TagUnit] [nvarchar](50) NULL,
	[TagRate] [real] NOT NULL,
	[TagDirection] [bit] NOT NULL,
	[TagEnabled] [bit] NOT NULL,
	[SystemKey] [bigint] NOT NULL,
	[WhyThat] [timestamp] NULL,

CONSTRAINT [PK_PI_Tags] PRIMARY KEY CLUSTERED 
(
	[TagKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

