{%- set source_model = "stg_orders_dv" -%}
{%- set src_pk = "customer_order_hk" -%}
{%- set src_fk = ["customer_hk", "order_hk"] -%}
{%- set src_ldts = "load_dts" -%}
{%- set src_source = "source" -%}

{{ automate_dv.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                    src_source=src_source, source_model=source_model) }}