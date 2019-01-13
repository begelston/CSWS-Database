SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[CreateEvent]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[CreateEvent] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].CreateEvent
	@StatusID INT,
	@TypeID INT,
	@Name NVARCHAR(100),
	@Description NVARCHAR(100),
	@When DATETIME,
	@StartTime DATETIME,
	@EndTime DATETIME,
	@Notes NVARCHAR(MAX),
	@PhotoURL NVARCHAR(MAX) = NULL,
	@Active BIT,
	@CreatedByID INT,	
	@ModifiedByID INT	
AS BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[Events]
			   ([StatusID],
			    [TypeID],
			    [Name],
			    [Description],
			    [When],
			    [StartTime],
			    [EndTime],
			    [Notes],
			    [PhotoURL],
			    [Active],
			    [CreatedByID],
			    [DateCreated],
			    [ModifiedByID],
			    [DateModified])
		 VALUES
		   (@StatusID,
			@TypeID,
			@Name,
			@Description, 
			@When,
			@StartTime,
			@EndTime,
			@Notes,
			@PhotoURL,
			@Active,
			@CreatedByID, 
			GETDATE(),
			@ModifiedByID,
			GETDATE())
	
END	
	
GO	