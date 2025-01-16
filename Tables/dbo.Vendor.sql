CREATE TABLE [dbo].[Vendor] (
  [ID] [int] IDENTITY,
  [PersonID] [int] NOT NULL, 
  [AccountNumber] [nvarchar](25) NOT NULL,
  [Email] [nvarchar](50) NULL,
  [Phone] [nvarchar](50) NULL,
  CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Vendor]
  ADD CONSTRAINT [FK_Vendor_Person] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([ID])
GO