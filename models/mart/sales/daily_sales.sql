
SELECT
    order_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(quantity * unit_price) AS total_sales
FROM {{ ref('stg_orders') }}
GROUP BY order_date
ORDER BY order_date