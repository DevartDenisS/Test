SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[customer] (
	[customer_id] int IDENTITY(1, 1),
	[store_id] int NOT NULL,
	[first_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[email] varchar(50) COLLATE Cyrillic_General_CI_AS DEFAULT (NULL),
	[address_id] int NOT NULL,
	[active] char(1) COLLATE Cyrillic_General_CI_AS NOT NULL DEFAULT ('Y'),
	[create_date] datetime NOT NULL CONSTRAINT [DF_customer_create_date] DEFAULT (getdate()),
	[last_update] datetime NOT NULL CONSTRAINT [DF_customer_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([customer_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_customer_address] FOREIGN KEY ([address_id])
		REFERENCES [dbo].[address] ([address_id])
	 ON UPDATE CASCADE,
	CONSTRAINT [fk_customer_store] FOREIGN KEY ([store_id])
		REFERENCES [dbo].[store] ([store_id])
	 ON UPDATE CASCADE
) ON [PRIMARY]
CREATE INDEX [idx_fk_address_id]
 ON [dbo].[customer] ([address_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_store_id]
 ON [dbo].[customer] ([store_id])
ON [PRIMARY]
CREATE INDEX [idx_last_name]
 ON [dbo].[customer] ([last_name])
ON [PRIMARY]