SET QUOTED_IDENTIFIER, ANSI_NULLS ON
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