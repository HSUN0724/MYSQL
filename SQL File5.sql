use my_database;

# primary key

create table cars_05(
car_id int,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int,
primary key(car_id)
);

desc cars_05;

insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(1, 'Luxgen', 'pink', 320000);

show warnings;
desc cars_05;

select * from cars_05;

insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(1, 'Luxgen', 'pink', 320000);
# Error	1364	Field 'car_id' doesn't have a default value
#主鍵不可重複

insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(2, 'Luxgen', 'pink', 320000);
select * from cars_05;

-- auto increment

create table cars_06(
car_id int primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

select * from cars_06;

desc cars_06;

insert into cars_06( car_brand, car_color, car_sale_price)
values( 'Luxgen', 'blue', 280000);

select * from cars_06;

#auto increment customized
create table cars_07(
car_id int primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

-- alter table settings
alter table cars_07 auto_increment = 101;
insert into cars_07( car_brand, car_color, car_sale_price)
values( 'Luxgen', 'green', 280000);
select * from cars_07;
 
-- unique
create table user_account(
user_id int primary key auto_increment,
user_name varchar(80) not null unique,
user_password varchar(80) not null
);

desc user_account;

-- insert data
insert into user_account(user_name, user_password)
values('ilove5566', 5566);
select * from user_account;

-- insert data with same user_name
insert into user_account(user_name, user_password)
values('ilove5566', 5566);
show warnings;
# Duplicate entry 'ilove5566' for key 'user_account.user_name'

-- insert data with different user_name
insert into user_account(user_name, user_password)
values('ihate5566', 5566);
select * from user_account;

create table my_product(
product_id int primary key auto_increment,
product_name varchar(80),
product_price int
);

alter table my_product auto_increment = 21;
insert into my_product(product_name, product_price)
values( 'a', 100),
( 'c', 300),
( 'd', 400),
( 'e', 500);
select * from my_product;

