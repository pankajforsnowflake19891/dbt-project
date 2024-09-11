{ config (materialized='incremental') }}
WITH source_data AS (
    SELECT
        customer_id,
        CURRENT_TIMESTAMP() AS load_dts,
        'RAW' AS source
    FROM {{ ref('raw_customers') }}
)
SELECT
    MD5(customer_id) AS customer_hk,
    customer_id,
    load_dts,
    source
FROM source_data