﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[TestProc] (@P1 INT,@p2 CHAR(50)) AS SELECT * FROM dbo.TestTable WHERE Column1 = @P1 AND Column2 = @p2;
GO