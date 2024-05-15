with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)
SELECT
    cast(orders_id as INT64) as orders_id,
    cast(shipping_fee as FLOAT64) as shipping_fee,
    cast(logcost as FLOAT64) as logcost,
    cast(ship_cost as STRING) as ship_cost
FROM
    {{ source('raw', 'ship') }}







