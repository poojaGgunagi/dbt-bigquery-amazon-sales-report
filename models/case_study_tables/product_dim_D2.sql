CREATE TABLE `cohesive-geode-432116-a5.amazon.Product_Dim_D2` (
    Product_ID INT64,
    SKU STRING,
    ASIN STRING,
    Category STRING,
    Style STRING,
    Size STRING
) as
SELECT DISTINCT
    CAST(ROW_NUMBER() OVER (ORDER BY SKU) AS INT64) AS Product_ID,
    SKU,
    ASIN,
    Category,
    Style,
    Size
FROM `cohesive-geode-432116-a5.amazon.Amazon_Sales_Report`