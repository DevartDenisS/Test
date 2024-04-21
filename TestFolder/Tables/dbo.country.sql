SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[country] (
	[country_id] smallint IDENTITY(1, 1),
	[country] varchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_update] datetime CONSTRAINT [DF_country_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([country_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]