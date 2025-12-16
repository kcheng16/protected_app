DECLARE @triggerInput BIGINT;
SET @triggerInput = CAST({{ ClearFormTrigger.value }} AS BIGINT);
SELECT 1;