{%- set source_model = "stg_customers_dv" -%}
{%- set src_pk = "customer_hk" -%}
{%- set src_hashdiff = "CUSTOMER_HASHDIFF" -%}
{%- set src_payload = ["CUSTOMER_NAME", "CUSTOMER_EMAIL", "CUSTOMER_PHONE"] -%}
{%- set src_eff = "load_dts" -%}
{%- set src_ldts = "load_dts" -%}
{%- set src_source = "source" -%}

{{ automate_dv.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                   src_payload=src_payload, src_eff=src_eff,
                   src_ldts=src_ldts, src_source=src_source,
                   source_model=source_model) }}