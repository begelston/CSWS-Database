USE [MMMCDB]
GO

/****** Object:  Table [dbo].[Members]    Script Date: 11/21/2017 7:27:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Members](
	[MemberID] [int] NOT NULL IDENTITY(1,1),
	[MemberTypeID] [int] NOT NULL, 
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleInitial] [nchar](1) NULL,	
	[NickName] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nchar](2) NULL,
	[Zip] [nchar](10) NULL,
	[PhotoURL] [nvarchar](max) NULL,
	[MemberNote] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedByID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedByID] [int] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

