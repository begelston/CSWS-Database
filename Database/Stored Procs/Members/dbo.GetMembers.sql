SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[GetMembers]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[GetMembers] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].[GetMembers]
	@Active BIT
AS BEGIN

	SET NOCOUNT ON;

	SELECT [MemberID]
		  ,[MemberTypeID]
		  ,[FirstName]
		  ,[LastName]
		  ,[MiddleInitial]
		  ,[NickName]
		  ,[Address1]
		  ,[City]
		  ,[State]
		  ,[Zip]
		  ,[PhotoURL]
		  ,[MemberNote]
		  ,[Active]
		  ,[CreatedByID]
		  ,[DateCreated]
		  ,[ModifiedByID]
		  ,[DateModified]
	FROM [dbo].[Members]
	WHERE Active = @Active
END