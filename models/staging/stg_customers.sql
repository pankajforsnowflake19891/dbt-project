select
customer_id, 
customer_name, 
customer_email, 
customer_phone,
CURRENT_TIMESTAMP() AS load_dts,
'RAW' AS source
from {{ source('PANKAJFORSNOWFLAKE19', 'raw_customers') }}