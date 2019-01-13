SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[UpdateMessage]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[UpdateMessage] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].UpdateMessage
	@MessageID INT,
	@ModifiedByID INT,	
	@MessageTypeID INT = NULL,
	@SenderID INT = NULL,	
	@TargetMemberID INT = NULL,
	@TargetGroupID INT = NULL,
	@Message NVARCHAR(MAX) = NULL,
	@PhotoURL NVARCHAR(MAX) = NULL,
	@VisibilityTypeID INT = NULL,
	@Active BIT = NULL,
	@BeginDisplayDate DATETIME = NULL,
	@ExpirationDate DATETIME = NULL
AS BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT * FROM [dbo].[Messages] WHERE MessageID = @MessageID)
	BEGIN
	UPDATE [dbo].[Messages]
	   SET [MessageTypeID] = ISNULL(@MessageTypeID, MessageID),
		  [SenderID] = ISNULL(@SenderID,SenderID),
		  [TargetMemberID] = ISNULL(@TargetMemberID,TargetMemberID),
		  [TargetGroupID] = ISNULL(@TargetGroupID, TargetGroupID),
		  [Message] = ISNULL(@Message, Message),
		  [PhotoURL] = ISNULL(@PhotoURL, PhotoURL),
		  [VisibilityTypeID] = ISNULL(@VisibilityTypeID, VisibilityTypeID),
		  [Active] = ISNULL(@Active, Active),
		  [BeginDisplayDate] = ISNULL(@BeginDisplayDate, BeginDisplayDate),
		  [ExpirationDate] = ISNULL(@ExpirationDate, ExpirationDate),		  		  
		  [ModifiedByID] = ModifiedByID,
		  DateModified = GETDATE()
	 WHERE MessageID = @MessageID
	END ELSE 
	BEGIN
		RETURN -1
	END
END