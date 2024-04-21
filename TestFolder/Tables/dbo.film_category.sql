SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[film_category] (
	[film_id] int NOT NULL,
	[category_id] tinyint NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_film_category_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([film_id], [category_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_film_category_category] FOREIGN KEY ([category_id])
		REFERENCES [dbo].[category] ([category_id])
	 ON UPDATE CASCADE,
	CONSTRAINT [fk_film_category_film] FOREIGN KEY ([film_id])
		REFERENCES [dbo].[film] ([film_id])
	 ON UPDATE CASCADE
) ON [PRIMARY]
CREATE INDEX [idx_fk_film_category_category]
 ON [dbo].[film_category] ([category_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_film_category_film]
 ON [dbo].[film_category] ([film_id])
ON [PRIMARY]