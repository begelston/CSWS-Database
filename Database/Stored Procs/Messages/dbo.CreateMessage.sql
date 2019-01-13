SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[CreateMessage]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[CreateMessage] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].CreateMessage
	@MessageTypeID INT,
	@SenderID INT,	
	@TargetMemberID INT,
	@TargetGroupID INT,
	@Message NVARCHAR(MAX),
	@PhotoURL NVARCHAR(MAX),
	@VisibilityTypeID INT,
	@Active BIT,
	@BeginDisplayDate DATETIME,
	@ExpirationDate DATETIME,
	@CreatedByID INT	
AS BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[Messages]
			   ([MessageTypeID]
			   ,[SenderID]
			   ,[TargetMemberID]
			   ,[TargetGroupID]
			   ,[Message]
			   ,[PhotoURL]
			   ,[VisibilityTypeID]
			   ,[Active]
			   ,[BeginDisplayDate]
			   ,[ExpirationDate]
			   ,[CreatedByID]
			   ,[DateCreated]
			   ,[ModifiedByID]
			   ,[DateModified])
		OUTPUT INSERTED.MessageID
		VALUES
			(@MessageTypeID,
			@SenderID,
			@TargetMemberID,
			@TargetGroupID,
			@Message,
			@PhotoURL,
			@VisibilityTypeID,
			@Active,
			@BeginDisplayDate,
			@ExpirationDate,
			@CreatedByID,
			GETDATE(),
			@CreatedByID,
			GETDATE())
END

GO