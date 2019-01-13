USE [MMMCDB]
GO

/****** Object:  Table [dbo].[MemberRoles]    Script Date: 11/21/2017 9:31:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MemberRoles](
	[RecordID] [int] NOT NULL IDENTITY(1,1),
	[TypeID] [int] NOT NULL,	
	[MemberID] int NOT NULL,		
	[CreatedByID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedByID] [int] NULL,
	[DateModified] [datetime] NULL	
 CONSTRAINT [PK_MemberRoles] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

