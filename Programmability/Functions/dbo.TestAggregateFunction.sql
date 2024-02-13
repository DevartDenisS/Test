SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE AGGREGATE [dbo].[TestAggregateFunction] (@input [nvarchar](200))
RETURNS [nvarchar](max)
EXTERNAL NAME [SqlClassLibrary].[Aggregate1]
GO