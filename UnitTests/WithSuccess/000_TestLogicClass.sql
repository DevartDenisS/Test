CREATE SCHEMA [TestLogicClass] AUTHORIZATION [dbo]
GO

EXEC sys.sp_addextendedproperty N'tSQLt.TestClass', 1, 'SCHEMA', N'TestLogicClass'
GO