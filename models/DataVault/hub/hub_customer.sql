{{ config(
    materialized='incremental',
    unique_key = 'customer_hk'
    ) }}

SELECT
    MD5_number_upper64(customer_id) AS customer_hk,
    customer_id,
    CURRENT_TIMESTAMP() AS load_dts,
    'RAW' AS source
FROM {{ ref('stg_customers') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records whose timestamp occurred since the last run of this model)
where load_dts >= (select max(load_dts)) from {{ this }} )

{% endif %}
