create database customer;
use customer;

create table customer_rec(
customer_id INT,
customer_name VARCHAR (50),
customer_address varchar(200),
city varchar(200),
state varchar (100),
zip_code varchar (150)
);

insert into customer_rec values (1,"John Doe","392 Sunset Blvd","New York","NT","10059");
insert into customer_rec values (2,"Mary Smith","6900 Main St","San Francisco","CA","94032");
insert into customer_rec values (3,"Richard Newman","2040 Riverside Rd","San Diego","CA","92010");
insert into customer_rec values (4,"Cathy Cook","4010 Speedway","Tucson","AZ","85719");

alter table customer_rec change column customer_address address varchar(200);
alter table customer_rec add column mobile_num INT;

delete from customer_rec where mobile_num IS Null;

drop table customer_rec;

create table customer_rec(
customer_id INT,
customer_name VARCHAR (50),
customer_address varchar(200),
city varchar(200),
state varchar (100),
zip_code varchar (150),
mobile_num varchar (100)
);

insert into customer_rec values(1, "John Doe", "392 Sunset Blvd", "ew York", "T", "10059", "555-123-4567");
insert into customer_rec values (2, "Mary Smith", "6900 mein St", "San Diego", "CA", "94632","555-987-6543");
insert into customer_rec values (3, "Richard Neuman", "2040 Riverside", "San Diego", "CA", "92010", "555-555-5555");
insert into customer_rec values(4, "Cathy Cook", "6900 Main St", "San Fransisco", "CA", "85719", "555-321-7890");
insert into customer_rec values (5, "Alice Johnson", "123 Oak Street", "San Diego", "CA", "90881","555-111-2222");
insert into customer_rec values (6, "Bob Millians", "456 Elm Avenue", "Chicago", "IL","60601","555-444-7777");

select * from customer_rec;

select customer_name,mobile_num from customer_rec;

update customer_rec set mobile_num = "82206-1234" where customer_name = "Mary Smith";
select * from customer_rec;

delete from customer_rec where zip_code = "60601";
select * from customer_rec;

select  state from customer_rec where state = "CA";

select  customer_name,state from customer_rec where state = "CA";

select * from customer_rec where state = "CA";

select * from customer_rec where customer_id > 1;

alter table customer_rec drop column mobile_num;
select * from customer_rec;

truncate table customer_rec;
select * from customer_rec;






 