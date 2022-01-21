
      

  create  table "sakila_wh"."dwh"."payment_inc"
  as (
    

select
*,
'2022-01-21 06:44:04' as dbt_tran_time
from
stg.payment
where 1=1




-- - INTERVAL '3 DAY'
-- unique_key='payment_id'
  );
  