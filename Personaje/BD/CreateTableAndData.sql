USE [DAI_Personaje]
GO

/****** Object:  Table [dbo].[Personajes]    Script Date: 26/4/2022 08:40:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Personajes](
	[imagen] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[edad] [int] NULL,
	[peso] [int] NULL,
	[historia] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO