CREATE OR REPLACE TABLE cohesive-geode-432116-a5.amazon.Fulfilment_Dim (
    Fulfilment_ID INT64,
    Fulfilment_Type STRING,
    Fulfilled_By STRING
) AS
 SELECT 
 DISTINCT
    CAST(ROW_NUMBER() OVER (ORDER BY Fulfilment) AS INT64) AS Fulfillment_ID,
    Fulfilment AS Fulfillment_Type,
    `fulfilled-by`
FROM `cohesive-geode-432116-a5.amazon.amazon_sales_report_D1_model`
