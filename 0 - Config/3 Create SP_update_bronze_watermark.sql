-- Updates the watermark for all active indicators using the pipeline execution variable end_date
CREATE PROC [config].sp_update_bronze_watermark 
@new_watermark datetime2(0)
AS
BEGIN

UPDATE [config].[bronze_control] 
SET [last_watermark] = @new_watermark
WHERE [is_active] = 1

END