CREATE or replace TABLE `cohesive-geode-432116-a5.amazon.Location_Dim_D2` (
    Location_ID INT64,
    Ship_City STRING,
    Ship_State STRING,
    Ship_Postal_Code STRING,
    Ship_Country STRING
)
AS
SELECT DISTINCT
    CAST(ROW_NUMBER() OVER (ORDER BY `ship-city`, `ship-state`, `ship-postal-code`, `ship-country`) AS INT64) AS Location_ID,
    `ship-city` AS Ship_City,
    `ship-state` AS Ship_State,
    `ship-postal-code` AS Ship_Postal_Code,
    `ship-country` AS Ship_Country
FROM `cohesive-geode-432116-a5.amazon.amazon_sales_report_D1_model`
where  `ship-postal-code` is not null
