USE [MMMCDB]
GO

/****** Object:  Table [dbo].[Messages]    Script Date: 11/21/2017 11:00:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[MessageTypeID] [int] NOT NULL, -- user to user/user to group/news feed/banner message/prayer request/	
	[SenderID] [int] NOT NULL,
	[TargetMemberID] int NOT NULL,
	[TargetGroupID] [int] NOT NULL,	
	[Message] [nvarchar](max) NOT NULL,
	[PhotoURL] [nvarchar](max) NULL,
	[VisibilityTypeID] [int],
	[Active] [bit] NOT NULL,
	[BeginDisplayDate] [datetime], -- used for news feed or other temporary messages	
	[ExpirationDate] [datetime], -- used for news feed or other temporary messages	
	[CreatedByID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[ModifiedByID] [int] NULL,
	[DateModified] [datetime] NULL		
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

