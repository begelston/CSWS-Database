SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;



IF EXISTS (SELECT * FROM [dbo].[MessageTypeLookup] WHERE MessageTypeID = 10)
BEGIN
	UPDATE [dbo].[MessageTypeLookup]
	SET --[MessageTypeID] = 10,
		[DisplayName] = N'Member to member',
		[Description] = N'Private message from member to member',
		[Active] = 1,
		[CreatedByID] = -1,		   
		[ModifiedByID] = -1,
		[DateModified] = GETDATE()
	WHERE MessageTypeID = 10
END ELSE
BEGIN
	INSERT INTO [dbo].[MessageTypeLookup]
		([MessageTypeID]
		,[DisplayName]
		,[Description]
		,[Active]
		,[CreatedByID]
		,[DateCreated]
		,[ModifiedByID]
		,[DateModified])
	VALUES
		( 10, 
			N'Member to member',
			N'Private message from member to member',
			1, -1, GETDATE(), -1, GETDATE())
END

GO

IF EXISTS (SELECT * FROM [dbo].[MessageTypeLookup] WHERE MessageTypeID = 20)
BEGIN
	UPDATE [dbo].[MessageTypeLookup]
	SET --[MessageTypeID] = 20,
		[DisplayName] = N'Group Message',
		[Description] = N'Message to a group',
		[Active] = 1,
		[CreatedByID] = -1,		   
		[ModifiedByID] = -1,
		[DateModified] = GETDATE()
	WHERE MessageTypeID = 10
END ELSE
BEGIN
	INSERT INTO [dbo].[MessageTypeLookup]
		([MessageTypeID]
		,[DisplayName]
		,[Description]
		,[Active]
		,[CreatedByID]
		,[DateCreated]
		,[ModifiedByID]
		,[DateModified])
	VALUES
		( 20, 
			N'Group Message',
			N'Message to a group',
			1, -1, GETDATE(), -1, GETDATE())
END

GO

IF EXISTS (SELECT * FROM [dbo].[MessageTypeLookup] WHERE MessageTypeID = 30)
BEGIN
	UPDATE [dbo].[MessageTypeLookup]
	SET --[MessageTypeID] = 30,
		[DisplayName] = N'Prayer Request',
		[Description] = N'A prayer request',
		[Active] = 1,
		[CreatedByID] = -1,		   
		[ModifiedByID] = -1,
		[DateModified] = GETDATE()
	WHERE MessageTypeID = 10
END ELSE
BEGIN
	INSERT INTO [dbo].[MessageTypeLookup]
		([MessageTypeID]
		,[DisplayName]
		,[Description]
		,[Active]
		,[CreatedByID]
		,[DateCreated]
		,[ModifiedByID]
		,[DateModified])
	VALUES
		( 30, 
			N'Prayer Request',
			N'A prayer request',
			1, -1, GETDATE(), -1, GETDATE())
END

GO

IF EXISTS (SELECT * FROM [dbo].[MessageTypeLookup] WHERE MessageTypeID = 40)
BEGIN
	UPDATE [dbo].[MessageTypeLookup]
	SET --[MessageTypeID] = 40,
		[DisplayName] = N'News Feed',
		[Description] = N'A news feed article message',
		[Active] = 1,
		[CreatedByID] = -1,		   
		[ModifiedByID] = -1,
		[DateModified] = GETDATE()
	WHERE MessageTypeID = 10
END ELSE
BEGIN
	INSERT INTO [dbo].[MessageTypeLookup]
		([MessageTypeID]
		,[DisplayName]
		,[Description]
		,[Active]
		,[CreatedByID]
		,[DateCreated]
		,[ModifiedByID]
		,[DateModified])
	VALUES
		( 40, 
			N'News Feed',
			N'A news feed article message',
			1, -1, GETDATE(), -1, GETDATE())
END

GO
