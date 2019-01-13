USE [MMMCDB]
GO

/****** Object:  Table [dbo].[Groups]    Script Date: 11/21/2017 10:42:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Groups](
	[GroupID] [int] NOT NULL IDENTITY(1,1),
	[TypeID] int NOT NULL,
	[PrivacyTypeID] int NOT NULL,
	[AdministratorID] int NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,	
	[PhotoUrl] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedByID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedByID] [int] NULL,
	[DateModified] [datetime] NULL		
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

