CREATE OR REPLACE TABLE `cohesive-geode-432116-a5.amazon.Sales_Fact_D2` (
    OrderID String NOT NULL,
    Date Date,
    Status String,
    Fulfillment String,
    SalesChannel String,
    ServiceLevel String,
    Category String,
    CourierStatus String,
    Qty INT64,
    Currency String,
    Amount FLOAT64,
    Location String,
    Promotion String,
    OrderType Bool
    ASIN String,
) As

select 
DISTINCT 
`Order ID`,
    `Date`,
    `Status`,
    `fulfilled-by`,
    'Sales Channel',
    `ship-service-level`,
    `Category`,
    `Courier Status`,
    `Qty`,
    `Currency`,
    `Amount`,
    `ship-postal-code`,
    'promotion-ids',
    `B2B`,
    ASIN,
from 
 `cohesive-geode-432116-a5.amazon.amazon_sales_report_D1_model`
