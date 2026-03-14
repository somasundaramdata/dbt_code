{{
    config(materialized='table')
}}
with tbl as (
    select order_id,
    payment_method,
    amount
    from {{source('datafeed_shared_schema','stg_payments')}}
) select * from tbl 