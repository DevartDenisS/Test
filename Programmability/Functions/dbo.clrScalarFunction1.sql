SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[clrScalarFunction1] (@f [float])
RETURNS [float]
AS
EXTERNAL NAME [Clr_Assembly1].[Clr_function.APress.Samples.Sql].[Fahrenheit2Celsius]
GO