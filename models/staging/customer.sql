{{config(materialized='table')
}}
with tbl as (
    select id as customer_id,
           first_name,
           last_name
      from {{source('datafeed_shared_schema','stg_customerdata')}}
) select * from tbl