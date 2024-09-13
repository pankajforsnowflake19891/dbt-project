{%- set source_model = "stg_customers_dv" -%}
{%- set src_pk = "customer_id" -%}
{%- set src_nk = "customer_name" -%}
{%- set src_ldts = "load_dts" -%}
{%- set src_source = "source" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                   src_source=src_source, source_model=source_model) }}