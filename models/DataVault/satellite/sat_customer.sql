{{ config(
    materialized='incremental',
    unique_key = 'customer_hk'
    ) }}


SELECT
    MD5_number_upper64(customer_id) AS customer_hk,
    customer_name,
    customer_email,
    customer_phone,
    CURRENT_TIMESTAMP() AS load_dts,
    'RAW' AS source
FROM {{ ref('stg_customers') }}
