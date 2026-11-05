-- Create bronze_control table 
CREATE TABLE [config].[bronze_control] (
    esios_indicator_id          INT NOT NULL,
    esios_indicator_name        VARCHAR(100) NOT NULL,
    esios_indicator_short_name  VARCHAR(100) NOT NULL,
    indicator_display_name      VARCHAR(100) NOT NULL,
    locale_language             CHAR(2),
    time_trunc                  VARCHAR(50),
    time_agg                    VARCHAR(7),
    target_landing_path         VARCHAR(500) NOT NULL,
    target_folder_name          VARCHAR(100) NOT NULL,
    file_type                   VARCHAR(8) NOT NULL,
    last_watermark              DATETIME2(0) NOT NULL,
    overlap_minutes             INT NOT NULL,
    is_active                   BIT NOT NULL
)

ALTER TABLE [config].[bronze_control] 
ADD CONSTRAINT [PK_config_bronze_control] PRIMARY KEY NONCLUSTERED (esios_indicator_id) NOT ENFORCED


-- Insert data into bronze_control
INSERT INTO [config].[bronze_control] 
(esios_indicator_id, esios_indicator_name, esios_indicator_short_name, indicator_display_name, locale_language, time_trunc, time_agg, target_landing_path, target_folder_name, file_type, last_watermark, overlap_minutes, is_active)
VALUES 
    (541, 'Peninsular wind power generation forecast', 'Wind Forecast', 'Wind', 'en', 'fifteen_minutes', 'sum', 'Files/Generation Forecast', 'wind_forecast', 'json', '2025-01-01 00:00:00', 15, 1),
    (542, 'Solar PV generation forecast', 'Solar Photovoltaic Forecast', 'Solar Photovoltaic', 'en', 'fifteen_minutes', 'sum', 'Files/Generation Forecast', 'solar_photovoltaic_forecast', 'json', '2025-01-01 00:00:00', 15, 1),
    (543, 'Solar thermal forecast', 'Solar Thermal Forecast', 'Solar Thermal', 'en', 'fifteen_minutes', 'sum', 'Files/Generation Forecast', 'solar_thermal_forecast', 'json', '2025-01-01 00:00:00', 15, 1),
    (544, 'Forecasted demand', 'Forecasted Demand', 'Forecasted Demand', 'en', 'five_minutes', 'sum', 'Files/Demand', 'forecasted_demand', 'json', '2025-01-01 00:00:00', 15, 1),
    (545, 'Scheduled demand', 'Scheduled Demand', 'Scheduled Demand', 'en', 'five_minutes', 'sum', 'Files/Demand', 'scheduled_demand', 'json', '2025-01-01 00:00:00', 15, 1),
    (546, 'Real time generation hydro', 'Hydro', 'Hydro', 'en', 'five_minutes', 'sum', 'Files/Generation', 'hydro', 'json', '2025-01-01 00:00:00', 15, 1),
    (547, 'Real time generation coal', 'Coal', 'Coal', 'en', 'five_minutes', 'sum', 'Files/Generation', 'coal', 'json', '2025-01-01 00:00:00', 15, 1),
    (548, 'Real time generation fuel-gas', 'Fuel-gas', 'Fuel-gas', 'en', 'five_minutes', 'sum', 'Files/Generation', 'fuel_gas', 'json', '2025-01-01 00:00:00', 15, 1),
    (549, 'Real time generation nuclear', 'Nuclear', 'Nuclear', 'en', 'five_minutes', 'sum', 'Files/Generation', 'nuclear', 'json', '2025-01-01 00:00:00', 15, 1),
    (550, 'Real time generation C.C. GT', 'Combined Cycle', 'Combined Cycle', 'en', 'five_minutes', 'sum', 'Files/Generation', 'combined_cycle', 'json', '2025-01-01 00:00:00', 15, 1),
    (551, 'Real time generation wind', 'Wind', 'Wind', 'en', 'five_minutes', 'sum', 'Files/Generation', 'wind', 'json', '2025-01-01 00:00:00', 15, 1),
    (600, 'Marginal price Day Ahead market', 'Market Price', 'Market Price', 'en', 'five_minutes', 'sum', 'Files/Market', 'market_price', 'json', '2025-01-01 00:00:00', 15, 1),
    (1293, 'Real demand', 'Real Demand', 'Real Demand', 'en', 'five_minutes', 'sum', 'Files/Demand', 'real_demand', 'json', '2025-01-01 00:00:00', 15, 1),
    (1294, 'Real time generation Solar thermal', 'Solar Thermal', 'Solar Thermal', 'en', 'five_minutes', 'sum', 'Files/Generation', 'solar_thermal', 'json', '2025-01-01 00:00:00', 15, 1),
    (1295, 'Real time generation Solar PV', 'Solar Photovoltaic', 'Solar Photovoltaic', 'en', 'five_minutes', 'sum', 'Files/Generation', 'solar_photovoltaic', 'json', '2025-01-01 00:00:00', 15, 1),
    (1941, 'Total Peninsular Scheduled demand', 'Total Scheduled Demand', 'Total Scheduled Demand', 'en', 'five_minutes', 'sum', 'Files/Demand', 'total_scheduled_demand', 'json', '2025-01-01 00:00:00', 15, 1)

