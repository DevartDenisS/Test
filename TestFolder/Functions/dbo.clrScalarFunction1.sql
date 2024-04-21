CREATE FUNCTION [dbo].[clrScalarFunction1] (
	@f AS float(53))
RETURNS float(53)
AS EXTERNAL NAME [Clr_Assembly1].[Clr_function.APress.Samples.Sql].[Fahrenheit2Celsius]
GO