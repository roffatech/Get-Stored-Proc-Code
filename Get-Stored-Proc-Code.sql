-- This is a simple snippet to obtain the code for a stored procedure when provided the name
-- just substitute your stored proc name for the one in 'YourStoredProcedureName'.
-- of course you need to have rights to access the system tables or all bets are off. 

SELECT m.definition
FROM sys.sql_modules AS m
INNER JOIN sys.objects AS o ON m.object_id = o.object_id
WHERE o.type = 'P' -- 'P' for Stored Procedure
  AND o.name = 'YourStoredProcedureName';