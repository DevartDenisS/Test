CREATE TABLE [dbo].[Person] (
  [ID] [int] IDENTITY,
  [FirstName] [nvarchar](50) NOT NULL,
  [LastName] [nvarchar](50) NOT NULL,
  [Title] [nvarchar](25) NULL,
  CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO