CREATE OR ALTER VIEW PlanCache AS
SELECT qp.*
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_query_plan(cp.plan_handle) AS qp;
GO

SELECT * FROM PlanCache;