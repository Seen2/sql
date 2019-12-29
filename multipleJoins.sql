
select distinct 
    tickets.user_id user_id,
    name user_name,
    tickets.ticket_id ticket_id,
    tickets.no_seats*fare total_amount,
    tickets.no_seats*fare-discounts.discount_amount paid_amount
    from 
        users join tickets on tickets.user_id=users.user_id 
        join payments on tickets.ticket_id=payments.ticket_id 
        join discounts on discounts.discount_id=payments.discount_id 
    order by user_id desc; 
