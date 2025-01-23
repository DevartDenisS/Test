CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL PRIMARY KEY CLUSTERED,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[Color] [nvarchar](15) NULL,
	[ListPrice] [decimal](12, 2) NULL
)
GO
