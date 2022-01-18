

select
*,
'2022-01-15 16:27:51' as dbt_tran_time
from
stg.payment
where 1=1


and payment_date::timestamp > (select max(payment_date) from "sakila_wh"."dwh"."payment_inc")



-- - INTERVAL '3 DAY'
-- unique_key='payment_id'