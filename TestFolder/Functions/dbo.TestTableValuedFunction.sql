SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- CREATE Table-Valued FUNCTION
CREATE FUNCTION [dbo].[TestTableValuedFunction] (@P1 int)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM actor a WHERE a.actor_id = @P1    
);
GO