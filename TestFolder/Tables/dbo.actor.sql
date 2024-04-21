SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[actor] (
	[actor_id] int IDENTITY(1, 1),
	[first_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_name] varchar(45) COLLATE Cyrillic_General_CI_AS NOT NULL,
	[last_update] datetime NOT NULL CONSTRAINT [DF_actor_last_update] DEFAULT (getdate()),
	PRIMARY KEY NONCLUSTERED([actor_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]
CREATE INDEX [idx_actor_last_name]
 ON [dbo].[actor] ([last_name])
ON [PRIMARY]