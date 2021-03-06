SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
SET QUOTED_IDENTIFIER ON;
GO
IF OBJECT_ID(N'[dbo].[DeleteMessage]',N'P') IS NULL EXECUTE(N'CREATE PROCEDURE [dbo].[DeleteMessage] AS RAISERROR(''UNDEFINED!'',16,1);');
GO

ALTER PROCEDURE [dbo].DeleteMessage
	@MessageID INT
AS BEGIN
	SET NOCOUNT ON;
	DELETE FROM [dbo].[Messages]
	WHERE MessageID = @MessageID
END