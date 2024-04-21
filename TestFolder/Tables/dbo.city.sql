SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[city] (
	[city_id] int IDENTITY(1, 1),
	[city] varchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[country_id] smallint NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_city_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([city_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_city_country] FOREIGN KEY ([country_id])
		REFERENCES [dbo].[country] ([country_id])
	 ON UPDATE CASCADE
) ON [PRIMARY]
CREATE INDEX [idx_fk_country_id]
 ON [dbo].[city] ([country_id])
ON [PRIMARY]