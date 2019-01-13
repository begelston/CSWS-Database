USE [MMMCDB]
GO

/****** Object:  Table [dbo].[Friends]    Script Date: 11/21/2017 11:00:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Friends](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[InviterID] [int], 
	[InviteeID] [int] NOT NULL,
	[StatusID] [int] NOT NULL, -- invitation sent/invitation accepted/inviation declined
	[TypeID] [int] NOT NULL,
	[MessageID] [int],	
	[CreatedByID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedByID] [int] NULL,
	[DateModified] [datetime] NULL		
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

