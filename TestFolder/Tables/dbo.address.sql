SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[address] (
	[address_id] int IDENTITY(1, 1),
	[address] varchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[address2] varchar(50) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[district] varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[city_id] int NOT NULL,
	[postal_code] varchar(10) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[phone] varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_address_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([address_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_address_city] FOREIGN KEY ([city_id])
		REFERENCES [dbo].[city] ([city_id])
	 ON UPDATE CASCADE
) ON [PRIMARY]
CREATE INDEX [idx_fk_city_id]
 ON [dbo].[address] ([city_id])
ON [PRIMARY]