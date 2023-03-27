create database joinclause
use joinclause

create table customer
(
cust_id int identity(101,1)primary key,
Name varchar(50),
country varchar(50)
);

drop table customer

insert into customer(Name,country) values('Mrunmayee','India');
insert into customer(Name,country) values('Shalmali','America');
insert into customer(Name,country) values('Madhav','Bhutan');
insert into customer(Name,country) values('Aditi','Japan');

select * from customer;

create table order1
(
order_id int identity(1234,1),
cust_id int foreign key references customer(cust_id),
order_date date
);

drop table order1
insert into order1(cust_id,order_date) values(101,'29-Jan-2023');
insert into order1(cust_id,order_date) values(102,'19-April-2023');
insert into order1(cust_id,order_date) values(103,'13-March-2023');
insert into order1(cust_id,order_date) values(104,'1-May-2023');

select * from order1;

create table shipment
(
ship_id int identity (200,1),
ship_date date,
cust_id int foreign key references customer(cust_id)
);

drop table shipment
 insert into shipment(ship_date,cust_id)values('01-Feb-2023',101);
 insert into shipment(ship_date,cust_id)values('07-May-2023',102);
 insert into shipment(ship_date,cust_id)values('19-june-2023',103);
  insert into shipment(ship_date,cust_id)values('22-Dec-2023',104);
  
  select * from shipment;
  
  /*Clause*/
  
  /* 1.inner join clause*/
  select customer.Name,order1.order_id, order1.order_date from order1 inner join customer on customer.cust_id=order1.cust_id;
  
  /*2. left join clause*/
  
  select customer.Name,order1.order_id  from order1 left join customer on customer.cust_id=order1.cust_id;
  
  /* 3. right join clause*/
  
  select order1.order_id,order1.order_date from order1 right join customer on order1.cust_id =  customer.cust_id;
  
  /* 4. full outer join*/
  select * from customer full outer join order1 on customer.cust_id=order1.cust_id;

  /* 5. ineer join on all tables*/
  
select Name, country from((customer inner join order1 on customer.cust_id=order1.cust_id) inner join shipment on customer.cust_id=shipment.cust_id);
