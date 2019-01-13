SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;

IF OBJECT_ID(N'[dbo].[GetMessages]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[GetMessages] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].[GetMessages]
	@Active BIT
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
	WHERE Active = @Active
END