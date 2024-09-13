select
    order_id,
    customer_id, 
    order_date, 
    order_amount,
    CURRENT_TIMESTAMP() AS load_dts,
    'RAW' AS source

from {{ source('PANKAJFORSNOWFLAKE19', 'raw_orders') }}