create table customers(
cust_id serial primary key,
cust_name varchar(100)not null
);
create table orders(
ord_id varchar(100) not null,
ord_date  DATE not null,
price numeric not null,
cust_id integer not null,
foreign key(cust_id) references
customers(cust_id)
);
select * from orders;
select * from customers;
insert into customers(cust_name)
values
('raju'),('sham'),('paul'),('Alex');
INSERT INTO orders (ord_id, ord_date, cust_id, price)
VALUES
(1, '2024-04-05', 1, 250),
(2, '2024-04-06', 1, 260),
(3, '2024-04-07', 2, 270),
(4, '2024-04-08', 3, 280),
(5, '2024-04-09', 2, 250);

select * from customers cross join orders;
SELECT customers.cust_id, customers.cust_name, orders.ord_id, orders.ord_date, orders.price
FROM customers
INNER JOIN orders
ON customers.cust_id = orders.cust_id;
--analysis by inner joint                                                     
select c.cust_name , count(o.ord_id) from 
customers c
inner join 
orders o
on c.cust_id = o.cust_id
group by cust_name;
select c.cust_name , sum(o.price) from 
customers c
inner join 
orders o
on c.cust_id = o.cust_id
group by cust_name;
select * from customers c
left join 
orders o 
on c.cust_id=o.cust_id;
select * from orders o
right join 
customers c
on c.cust_id=o.cust_id;      -- here the out put will be the customer table right column

