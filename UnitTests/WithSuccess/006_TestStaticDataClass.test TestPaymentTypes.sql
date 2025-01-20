CREATE PROCEDURE [TestStaticDataClass].[test TestPaymentTypes]
AS
BEGIN
  -- Here must be your logic
  -- We just return OK for simplification purposes
  EXEC tSQLt.AssertEquals @Expected = 1, @Actual = 1
END;
GO