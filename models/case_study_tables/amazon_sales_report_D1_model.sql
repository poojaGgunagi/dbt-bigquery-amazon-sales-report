create or replace table `cohesive-geode-432116-a5.amazon.amazon_sales_report_D1_model` as (
with source_data as (
SELECT
DISTINCT -- removing duplicates if any
* except (`Unnamed: 22`) --removing unknown column
FROM `cohesive-geode-432116-a5.amazon.Amazon_Sales_Report`
)
select *
from source_data
)