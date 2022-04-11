with orders as (
    
    select
        jo.id as order_id,
        jo.user_id as customer_id,
        sp.amount as amount

    from `dbt-tutorial`.jaffle_shop.orders as jo
    join `dbt-tutorial`.stripe.payment as sp
    on jo.id = sp.orderid
)

select * from orders