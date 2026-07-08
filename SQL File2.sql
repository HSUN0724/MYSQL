-- null & Default
desc employee;

insert into employee(employee_id,employee_name)
values(66, '小明');

select * from employee;

-- not full
create table cars(
car_brand varchar(100) not null,
car_color varchar(100) not null,
car_sale_price int
);

desc cars;

insert into cars(car_brand,car_color,car_sale_price)
values
('Luxgen', 'blue',500000),
('Ford', 'White');
select * from cars;
show warnings;
# -- Error	1136 Column count doesn't match value count at row 2

create table cars(
car_brand varchar(100) not null,
car_color varchar(100) not null,
car_sale_price int
);

desc cars;

insert into cars(car_brand, car_sale_price)
values('Luxgen', 400000);

select * from cars;
show warnings;
#-- Error	1364	Field 'car_color' doesn't have a default value

insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen', 'Red', 380000),
('Luxgen', 'Black', null);
select * from cars;


create table cars_02(
car_brand varchar(100) not null default '我不知道',
car_color varchar(100) not null default '我不知道',
car_sale_price int default 50000
);

desc cars_02;

insert into cars_02()
values();

select * from cars_02;

insert into cars_02(car_color)
values( 'black');

select * from cars_02;

-- null with default

create table cars_03(
car_brand varchar(100) not null default '我不知道',
car_color varchar(100) not null default 'unknown',
car_sale_price int default 50000
);

desc cars_03;

insert into cars_03(car_color)
values( 'black');
select * from cars_03;

create table cars_04(
car_brand varchar(100)  default 'unknown',
car_color varchar(100)  default 'unknown',
car_sale_price int default 50000
);

desc cars_04;

select * from cars_04;

insert into cars_04(car_brand, car_color, car_sale_price)
values 
(null, 'black', null),
(default, 'black', default),
('toyota', null, default),
('honda', null, default);

select * from cars_04;

use my_database;

