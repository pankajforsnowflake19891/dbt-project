{%- set yaml_metadata -%}
source_model: 'stg_orders'
derived_columns:
  customer_id: 'customer_id'
hashed_columns:
  customer_hk: 'customer_id'
  order_hk: 'order_id'
  customer_order_hk:
    - 'customer_id'
    - 'order_id'
 {%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}

WITH staging AS (
{{ automate_dv.stage(include_source_columns=true,
                     source_model=source_model,
                     derived_columns=derived_columns,
                     hashed_columns=hashed_columns,
                     ranked_columns=none) }}
)

SELECT *,
       TO_DATE('{{ var('load_date') }}') AS LOAD_DATE
FROM staging