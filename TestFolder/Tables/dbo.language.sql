SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[language] (
	[language_id] tinyint IDENTITY(1, 1),
	[name] char(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_language_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([language_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]