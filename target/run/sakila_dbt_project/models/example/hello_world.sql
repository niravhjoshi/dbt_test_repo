

  create  table "sakila_wh"."dwh"."hello_world__dbt_tmp"
  as (
    select
	customer.customer_id::int,
	customer.store_id::int,
	customer.first_name,
	customer.last_name,
	concat(customer.first_name,' ',customer.last_name) as full_name,
	substring(email from POSITION('@' in email)+1 for char_length(email)-POSITION('@' in email)) as domain,
	customer.email,
	customer.active::int,
	customer.address_id::int,
	address.address,
	city.city_id::int,
	city.city,
	(case when customer.active = 0 then 'no' else 'yes' end)::varchar(100) as "active_desc",
	customer.create_date::timestamp,
	customer.last_update::timestamp
from
	stg.customer as customer

	left join stg.address on 1=1
	and customer.address_id =address.address_id

	left join stg.city on 1=1
	and address.city_id = city.city_id
  );