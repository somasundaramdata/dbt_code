{{config(materialized='table')
}}
with tbl as (
    select id 
      from {{source('datafeed_shared_schema','stg_order123')}}
) select * from tbl