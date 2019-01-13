SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[UpdateEvent]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[UpdateEvent] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].UpdateEvent
	@EventID INT,
	@ModifiedByID INT,	
	@StatusID INT = NULL,
	@TypeID INT = NULL,
	@Name NVARCHAR(100) = NULL,
	@Description NVARCHAR(100),
	@When DATETIME = NULL,
	@StartTime DATETIME = NULL,
	@EndTime DATETIME = NULL,
	@Notes NVARCHAR(MAX) = NULL,
	@PhotoURL NVARCHAR(MAX) = NULL,
	@Active BIT,
	@CreatedByID INT	
	
AS BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT * FROM [dbo].[Events] WHERE EventID = @EventID)
	BEGIN
	UPDATE [dbo].[Events]
	SET [StatusID] = ISNULL(@StatusID, StatusID),
		[TypeID] = ISNULL(@TypeID, TypeID),
		[Name] = ISNULL(@Name, Name),
		[Description] = ISNULL(@Description, Description),
		[When] = ISNULL(@When, [When]),
		[StartTime] = ISNULL(@StartTime, StartTime),
		[EndTime] = ISNULL(@EndTime, EndTime),
		[Notes] = ISNULL(@Notes, Notes),
		[PhotoURL] = ISNULL(@PhotoURL, PhotoURL),
		[Active] = ISNULL(@Active, Active),		   		   
		[ModifiedByID] = @ModifiedByID,
		[DateModified] = GETDATE()
	 WHERE EventID = @EventID
	END ELSE 
	BEGIN
		RETURN -1
	END
END