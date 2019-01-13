SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[GetMessage]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[GetMessage] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].[GetMessage]
	@MessageID int
AS BEGIN
	SET NOCOUNT ON;

	SELECT [MessageID]
		,[MessageTypeID]
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
		,[DateModified]
	FROM [dbo].[Messages]
	WHERE MessageID = @MessageID
END