SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[staff] (
	[staff_id] tinyint IDENTITY(1, 1),
	[first_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[address_id] int NOT NULL,
	[picture] image DEFAULT (NULL),
	[email] varchar(50) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[store_id] int NOT NULL,
	[active] bit NOT NULL DEFAULT ((1)),
	[username] varchar(16) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[password] varchar(40) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[last_update] datetime NOT NULL CONSTRAINT [DF_staff_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([staff_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_staff_address] FOREIGN KEY ([address_id])
		REFERENCES [dbo].[address] ([address_id])
	 ON UPDATE CASCADE,
	CONSTRAINT [fk_staff_store] FOREIGN KEY ([store_id])
		REFERENCES [dbo].[store] ([store_id])
	 ON UPDATE CASCADE
) ON [PRIMARY]
 TEXTIMAGE_ON [PRIMARY]
CREATE INDEX [idx_fk_address_id]
 ON [dbo].[staff] ([address_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_store_id]
 ON [dbo].[staff] ([store_id])
ON [PRIMARY]