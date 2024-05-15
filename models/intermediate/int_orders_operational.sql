select
margin.orders_id
,margin.date_date
,margin.revenue
,margin.quantity
,margin.purchase_cost
,margin.margin
,ship.shipping_fee
,ship.logcost
,ship.ship_cost
 from {{ref("int_orders_margin")}} margin
join {{ref("stg_raw__ship")}} ship using (orders_id)
ORDER BY orders_id desc

