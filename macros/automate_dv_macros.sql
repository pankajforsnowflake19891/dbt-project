-- macros/automate_dv_macros.sql

{% macro automate_dv_hub() %}
  -- Example: Triggering a data refresh procedure
  CALL refresh_data_hub_procedure();
{% endmacro %}
