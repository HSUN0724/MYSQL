-- date & time
use my_database;

create table phone(
phone_name varchar(100),
phone_price int,
stocking_time timestamp not null
);

insert into phone(phone_name, phone_price, stocking_time)
values('IPhone 17 Pro Max 2TB', 72900, '2026-07-07 09:23:00');
select * from phone;

-- now --

create table phone_02(
phone_name varchar(100),
phone_price int,
stocking_time timestamp not null default now()
);

insert into phone_02(phone_name, phone_price)
values('IPhone 17 Pro Max 2TB', 72900);

select * from phone_02;

