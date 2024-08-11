CREATE or replace TABLE `cohesive-geode-432116-a5.amazon.Order_dim_D2` (
    ID INT64,
    OrderID STRING,
    OrderDate Date,
    Status STRING,
    Fulfilment STRING
)
AS
SELECT DISTINCT
    CAST(ROW_NUMBER() OVER (ORDER BY `Date`) AS INT64) AS ID,
    `Order ID` AS OrderID,
     Date AS OrderDate,
    `status` AS Status,
    `Fulfilment` AS fulfilment
FROM `cohesive-geode-432116-a5.amazon.amazon_sales_report_D1_model`

