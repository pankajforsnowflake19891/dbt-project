-- models/refresh_data.sql

SELECT
    *
FROM
    {{ ref('stg_customers') }}
WHERE
    {{ automate_dv_hub() }}  -- Triggering the data refresh
