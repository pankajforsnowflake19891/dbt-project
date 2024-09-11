{ config (materialized='incremental') }}
WITH source_data AS (
    SELECT
        o.customer_id,
        o.order_id,
        CURRENT_TIMESTAMP() AS load_dts,
        'RAW' AS source
    FROM {{ ref('raw_orders') }} o
)
SELECT
    MD5(CONCAT(customer_id, order_id)) AS customer_order_hk,
    MD5(customer_id) AS customer_hk,
    MD5(order_id) AS order_hk,
    load_dts,
    source
FROM source_data