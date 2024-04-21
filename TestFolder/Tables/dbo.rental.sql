SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[rental] (
	[rental_id] int IDENTITY(1, 1),
	[rental_date] datetime NOT NULL,
	[inventory_id] int NOT NULL,
	[customer_id] int NOT NULL,
	[return_date] datetime DEFAULT (NULL),
	[staff_id] tinyint NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_rental_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([rental_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	CONSTRAINT [fk_rental_customer] FOREIGN KEY ([customer_id])
		REFERENCES [dbo].[customer] ([customer_id])
	,
	CONSTRAINT [fk_rental_inventory] FOREIGN KEY ([inventory_id])
		REFERENCES [dbo].[inventory] ([inventory_id])
	,
	CONSTRAINT [fk_rental_staff] FOREIGN KEY ([staff_id])
		REFERENCES [dbo].[staff] ([staff_id])
	
) ON [PRIMARY]
CREATE INDEX [idx_fk_customer_id]
 ON [dbo].[rental] ([customer_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_inventory_id]
 ON [dbo].[rental] ([inventory_id])
ON [PRIMARY]
CREATE INDEX [idx_fk_staff_id]
 ON [dbo].[rental] ([staff_id])
ON [PRIMARY]
CREATE UNIQUE INDEX [idx_uq]
 ON [dbo].[rental] ([rental_date], [inventory_id], [customer_id])
ON [PRIMARY]