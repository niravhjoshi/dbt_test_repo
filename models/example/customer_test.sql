{{config(matirialized='table',alias='customer_alias')}}

select * from 
{{ref ('hello_world')}}
where customer_id < {{var ('cust_id')}}