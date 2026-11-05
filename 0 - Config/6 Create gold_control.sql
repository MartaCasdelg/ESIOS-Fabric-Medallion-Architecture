-- Create gold_control table 
CREATE TABLE [config].[gold_control] (
    table_type                  VARCHAR(5) NOT NULL,
    target_schema               VARCHAR(50) NOT NULL,
    target_table                VARCHAR(50) NOT NULL,
    load_type                   VARCHAR(20) NOT NULL,
    notebook                    VARCHAR(50) NOT NULL,
    watermark_column            VARCHAR(100),
    last_watermark              DATETIME2(0),
    rows_inserted               INT,
    rows_updated                INT,
    is_active                   BIT NOT NULL
)

ALTER TABLE [config].[gold_control] 
ADD CONSTRAINT [PK_config_gold_control] PRIMARY KEY NONCLUSTERED (target_schema, target_table) NOT ENFORCED

-- Insert data into gold_control
INSERT INTO [config].[gold_control] 
(table_type, target_schema, target_table, load_type, notebook, watermark_column, last_watermark, rows_inserted, rows_updated, is_active)
VALUES 
    ('FACT', 'dbo', 'fact_demand', 'incremental', 'NB_Gold_Fact_Demand', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('FACT', 'dbo', 'fact_market', 'incremental', 'NB_Gold_Fact_Market', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('FACT', 'dbo', 'fact_generation', 'incremental', 'NB_Gold_Fact_Generation', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('FACT', 'dbo', 'fact_generation_forecast', 'incremental', 'NB_Gold_Fact_Generation_Forecast', 'ingestion_timestamp', '2025-01-01 00:00:00', NULL, NULL, 1),
    ('DIM', 'dbo', 'dim_indicators', 'full', 'NB_Gold_Dim_Indicators',  NULL, NULL, NULL, NULL, 1),
    ('DIM', 'dbo', 'dim_country', 'full', 'NB_Gold_Dim_Country',  NULL, NULL, NULL, NULL, 1),
    ('DIM', 'dbo', 'dim_magnitude', 'full', 'NB_Gold_Dim_Magnitude',  NULL, NULL, NULL, NULL, 1),
    ('DIM', 'dbo', 'dim_calendar', 'full', 'NB_Gold_Dim_Calendar',  NULL, NULL, NULL, NULL, 1),
    ('DIM', 'dbo', 'dim_hour', 'full', 'NB_Gold_Dim_Hour',  NULL, NULL, NULL, NULL, 1)    
