select
customer_id, 
customer_name, 
customer_email, 
customer_phone
from {{ source('PANKAJFORSNOWFLAKE19', 'raw_customers') }}