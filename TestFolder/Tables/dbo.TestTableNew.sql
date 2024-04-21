SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[TestTableNew] (
	[Col1] int,
	[Col2] char(1) COLLATE Cyrillic_General_CI_AS
) ON [PRIMARY]