SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[category] (
	[category_id] tinyint IDENTITY(1, 1),
	[name] varchar(25) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_category_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([category_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]