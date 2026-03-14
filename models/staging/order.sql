{{
    config(materialized='table')
}} 
with tbl as (
     select id as order_id,
                  order_date,
                  status 
      from {{source('datafeed_shared_schema','stg_order')}} 
) select * from tbl