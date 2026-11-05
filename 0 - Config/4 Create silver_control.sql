-- Create silver_control table
CREATE TABLE [config].[silver_control] (
    source_folder_name          VARCHAR(100) NOT NULL,
    target_schema               VARCHAR(50) NOT NULL,
    target_table                VARCHAR(50) NOT NULL,
    watermark_column            VARCHAR(100) NOT NULL,
    last_watermark              DATETIME2(0) NOT NULL,
    rows_inserted               INT,
    rows_updated                INT,
    is_active                   BIT NOT NULL
)

ALTER TABLE [config].[silver_control] 
ADD CONSTRAINT [PK_config_silver_control] PRIMARY KEY NONCLUSTERED (source_folder_name) NOT ENFORCED


-- Insert data into silver_control
INSERT INTO [config].[silver_control] 
(source_folder_name, target_schema, target_table, watermark_column, last_watermark, rows_inserted, rows_updated, is_active)
VALUES 
    ('Generation Forecast', 'dbo', 'generation_forecast', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('Demand', 'dbo', 'demand', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('Generation', 'dbo', 'generation', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('Market', 'dbo', 'market', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1)
