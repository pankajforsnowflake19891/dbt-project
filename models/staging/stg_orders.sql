select
    order_id,
    customer_id, 
    order_date, 
    order_amount

from {{ source('PANKAJFORSNOWFLAKE19', 'raw_orders') }}