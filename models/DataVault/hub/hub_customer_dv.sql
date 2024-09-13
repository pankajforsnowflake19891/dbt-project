{%- set source_model = "hub_customer" -%}
{%- set src_pk = "customer_hk" -%}
{%- set src_nk = "customer_id" -%}
{%- set src_ldts = "load_dts" -%}
{%- set src_source = "RAW" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                   src_source=src_source, source_model=source_model) }}