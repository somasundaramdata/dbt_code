{{config(materialized='table')
}}
with tbl as (
    select id,
           order_date, status  
      from {{source('datafeed_shared_schema','stg_order123')}}
) select * from tbl