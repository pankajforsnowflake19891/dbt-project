{{ config(materialized='incremental') }}

SELECT
    MD5_number_upper64(customer_id) AS customer_hk,
    customer_id,
    CURRENT_TIMESTAMP() AS load_dts,
    'RAW' AS source
FROM {{ ref('stg_customers') }}
