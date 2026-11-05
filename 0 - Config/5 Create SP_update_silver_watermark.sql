-- Updates the Silver watermark and load metrics for the specified target table
CREATE PROC [config].sp_update_silver_watermark 
@source_folder_name     VARCHAR(100),
@new_watermark          datetime2(0),
@rows_inserted          INT,
@rows_updated           INT
AS
BEGIN

UPDATE [config].[silver_control] 
SET 
    [last_watermark] = @new_watermark,
    [rows_inserted] = @rows_inserted,
    [rows_updated] = @rows_updated
WHERE [source_folder_name] = @source_folder_name

END