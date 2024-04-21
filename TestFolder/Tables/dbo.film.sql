SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[film] (
	[film_id] int IDENTITY(1, 1),
	[title] varchar(255) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[description] text COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[release_year] varchar(4) COLLATE Cyrillic_General_CI_AS,
	[language_id] tinyint NOT NULL,
	[original_language_id] tinyint DEFAULT (NULL),
	[rental_duration] tinyint NOT NULL DEFAULT ((3)),
	[rental_rate] decimal(4, 2) NOT NULL DEFAULT ((4.99)),
	[length] smallint DEFAULT (NULL),
	[replacement_cost] decimal(5, 2) NOT NULL DEFAULT ((19.99)),
	[rating] varchar(10) COLLATE Cyrillic_General_CI_AS DEFAULT ('G'),
	[special_features] varchar(255) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[last_update] datetime NOT NULL CONSTRAINT [DF_film_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([film_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_film_language] FOREIGN KEY ([language_id])
		REFERENCES [dbo].[language] ([language_id])
	,
	CONSTRAINT [fk_film_language_original] FOREIGN KEY ([original_language_id])
		REFERENCES [dbo].[language] ([language_id])
	,
	CONSTRAINT [CHECK_special_features] CHECK (([special_features] IS NULL OR [special_features] like '%Trailers%' OR [special_features] like '%Commentaries%' OR [special_features] like '%Deleted Scenes%' OR [special_features] like '%Behind the Scenes%')),
	CONSTRAINT [CHECK_special_rating] CHECK (([rating]='NC-17' OR [rating]='R' OR [rating]='PG-13' OR [rating]='PG' OR [rating]='G'))
) ON [PRIMARY]
 TEXTIMAGE_ON [PRIMARY]
CREATE INDEX [idx_fk_language_id]
 ON [dbo].[film] ([language_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_original_language_id]
 ON [dbo].[film] ([original_language_id])
ON [PRIMARY]