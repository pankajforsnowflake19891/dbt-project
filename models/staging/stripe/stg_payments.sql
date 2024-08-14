select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_status,
    amount,status,created,_batched_at

from {{ source('stripe','payment') }}