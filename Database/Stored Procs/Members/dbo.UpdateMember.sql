SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[UpdateMember]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[UpdateMember] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].UpdateMember

			@MemberID INT,
			@UpdatedByID INT,
			@MemberTypeID INT = NULL,
            @FirstName VARCHAR(50) = NULL,
            @LastName VARCHAR(50) = NULL,
            @MiddleInitial VARCHAR(1) = NULL,
            @NickName VARCHAR(50) = NULL,
            @Address1 VARCHAR(50) = NULL,
            @City VARCHAR(50) = NULL,
            @State VARCHAR(2) = NULL,
            @Zip VARCHAR(10) = NULL,
            @PhotoURL VARCHAR(MAX) = NULL,
            @MemberNote VARCHAR(MAX) = NULL,
            @Active BIT = NULL

AS BEGIN

	SET NOCOUNT ON;
	IF EXISTS(SELECT * FROM [dbo].[Members] WHERE MemberID = @MemberID)
	BEGIN
		UPDATE [dbo].[Members]
		SET [MemberTypeID] = ISNULL(@MemberTypeID, [MemberTypeID]),
			[FirstName] = ISNULL(@FirstName, FirstName),
			[LastName] = ISNULL(@LastName, LastName),
			[MiddleInitial] = ISNULL(@MiddleInitial, MiddleInitial),
			[NickName] = ISNULL(@NickName, NickName),
			[Address1] = ISNULL(@Address1, Address1),
			[City] = ISNULL(@City, City),
			[State] = ISNULL(@State, State),
			[Zip] = ISNULL(@Zip, Zip),
			[PhotoURL] = ISNULL(@PhotoURL, PhotoURL),
			[MemberNote] = ISNULL(@MemberNote, MemberNote),
			[Active] = ISNULL(@Active, Active),
			[CreatedByID] = ISNULL(@UpdatedByID, CreatedByID),		
			[ModifiedByID] = @UpdatedByID,
			[DateModified] = GETDATE()
		WHERE MemberID = @MemberID
	END ELSE 
	BEGIN
		RETURN -1
	END
END