SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[film_text] (
	[film_id] smallint NOT NULL,
	[title] varchar(255) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[description] text COLLATE Cyrillic_General_CI_AS,
	PRIMARY KEY NONCLUSTERED([film_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]
 TEXTIMAGE_ON [PRIMARY]