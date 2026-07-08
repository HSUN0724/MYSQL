-- table
use my_database;

create table members(
member_id int,
member_name varchar(100),
member_gender varchar(20),
member_age int
);


-- read table
select * from members; # * 代表全部


-- check table 
#1 
show columns from members;
#2 
describe members;
#3 
desc members;

-- drop table
drop table members;


create table player_02(
player_id int,
player_name varchar(100),
player_age int,
player_salary int,
player_team varchar(200)
);

select * from player_02;

desc player_02;

drop  table player_02;

-- insert data
insert into members(member_id,member_name,member_gender,member_age)
values(1, 'Alic', 'male', 29);

select * from members;

insert into members(member_id,member_name,member_gender,member_age)
values(1, 'Alic', '29', male);

show warnings;
# Unknown column 'male' in 'field list'

insert into members(member_id,member_name,member_gender,member_age)
values(1, 'Alic', 'male', 29);
select * from members;

insert into members(member_id,member_name,member_gender,member_age)
values
(2, 'Alice', 'Fmale', 20),
(3, 'Alex', 'Male', 26),
(4, 'Mark', 'Male', 22),
(5, 'Elsa', 'Fmale', 23);


create table employee(
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(50)
);

insert into employee(employee_id,employee_name,employee_age,employee_salary,employee_department)
values
(1, 'Tim', 39, 100000, 'Sales'),
(2, 'Danny', 27, 33000, 'Accounting'),
(3, 'Wilson', 33, 42000, 'Accounting'),
(4, 'Elizabeth', 22, 29000, 'Accounting');

select * from employee;
show warnings;
# Table 'my_database.employee' doesn't exist

drop table employee;