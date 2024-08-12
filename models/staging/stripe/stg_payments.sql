select
    id as payment_id,
    orderid,
    amount,status

from raw.stripe.payment