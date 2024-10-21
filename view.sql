-- we use having in group by
create view  billing_info as 
select 
c.cust_name,
o.ord_date,
p.p_name,
p.price,
oi.quantity,
(oi.quantity*p.price) as total_price


from order_items oi
join 
products p on oi.p_id=p.p_id
-- joining order item with order
 
join 
orders o
on oi.ord_id=o.ord_id
join 
customers c on o.cust_id=c.cust_id;

select p_name , sum(total_price) from billing_info
group by p_name
having sum(total_price )>1500;
--roll up
select coalesce(p_name,'total'),
sum(total_price) 
as amount from billing_info
group by 
rollup(p_name) 
order by amount;
select p_name,
sum(total_price) 
as amount from billing_info
group by (p_name); 
                                          
                                                                              

