CREATE TABLE [dbo].[Customer] (
  [ID] [int] IDENTITY,
  [PersonID] [int]  NOT NULL, 
  [AccountNumber] [nvarchar](25)  NOT NULL,
  [Email] [nvarchar](50) NULL,
  CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer]
  ADD CONSTRAINT [FK_Customer_Person] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([ID])
GO