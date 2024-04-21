CREATE FUNCTION [dbo].[clrTableValuedFunction1] (
	@parameter_name AS int)
RETURNS TABLE (
	[title] nvarchar(256) COLLATE Cyrillic_General_CI_AS,
	[link] nvarchar(256) COLLATE Cyrillic_General_CI_AS,
	[pubdate] datetime,
	[description] nvarchar(max) COLLATE Cyrillic_General_CI_AS)
AS EXTERNAL NAME [table_Assembly].[Clr_function.APress.Samples.Sql].[GetYahooNews]
GO