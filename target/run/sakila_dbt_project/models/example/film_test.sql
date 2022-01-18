

  create  table "sakila_wh"."dwh"."film_test__dbt_tmp"
  as (
    select * from 
stg.film
  );