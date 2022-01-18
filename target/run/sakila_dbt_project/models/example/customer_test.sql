

  create  table "sakila_wh"."dwh"."customer_test__dbt_tmp"
  as (
    

select * from 
"sakila_wh"."dwh"."hello_world"
where customer_id < 10
  );