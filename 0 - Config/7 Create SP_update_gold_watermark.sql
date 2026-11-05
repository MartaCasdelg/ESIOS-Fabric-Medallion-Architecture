-- Updates the Gold watermark and load metrics for the specified target table
CREATE PROC [config].sp_update_gold_watermark 
@target_table     VARCHAR(100),
@new_watermark          datetime2(0),
@rows_inserted          INT,
@rows_updated           INT
AS
BEGIN

UPDATE [config].[gold_control] 
SET 
    [last_watermark] = @new_watermark,
    [rows_inserted] = @rows_inserted,
    [rows_updated] = @rows_updated
WHERE [target_table] = @target_table

END