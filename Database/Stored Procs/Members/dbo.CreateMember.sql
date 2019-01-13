SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[CreateMember]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[CreateMember] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].CreateMember
			@MemberTypeID INT,
            @FirstName VARCHAR(50),
            @LastName VARCHAR(50),
            @MiddleInitial VARCHAR(1) NULL,
            @NickName VARCHAR(50) NULL,
            @Address1 VARCHAR(50),
            @City VARCHAR(50),
            @State VARCHAR(2),
            @Zip VARCHAR(10),
            @PhotoURL VARCHAR(MAX) NULL,
            @MemberNote VARCHAR(MAX) NULL,
            @Active BIT,
            @CreatedByID INT            

AS BEGIN

	SET NOCOUNT ON;

INSERT INTO [dbo].[Members]
           ([MemberTypeID]
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
           ,[DateModified])
	OUTPUT INSERTED.MemberID
     VALUES
           (@MemberTypeID,
            @FirstName,
            @LastName,
            @MiddleInitial,
            @NickName,
            @Address1,
            @City,
            @State,
            @Zip,
            @PhotoURL,
            @MemberNote,
            @Active,
            @CreatedByID,
            GETDATE(),
            @CreatedByID,
            GETDATE())


END