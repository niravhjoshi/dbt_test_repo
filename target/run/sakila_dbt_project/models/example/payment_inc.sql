
      delete
    from "sakila_wh"."dwh"."payment_inc"
    where (payment_id) in (
        select (payment_id)
        from "payment_inc__dbt_tmp215758155944"
    );

    insert into "sakila_wh"."dwh"."payment_inc" ("payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_tran_time")
    (
       select "payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_tran_time"
       from "payment_inc__dbt_tmp215758155944"
    );
  