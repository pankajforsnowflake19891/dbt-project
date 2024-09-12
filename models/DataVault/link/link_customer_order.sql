{{ config(materialized='incremental') }}

SELECT
    MD5_number_upper64(CONCAT(customer_id, order_id)) AS customer_order_hk,
    MD5_number_upper64(customer_id) AS customer_hk,
    MD5_number_upper64(order_id) AS order_hk,
    CURRENT_TIMESTAMP() AS load_dts,
    'RAW' AS source
FROM {{ ref('stg_orders') }}
