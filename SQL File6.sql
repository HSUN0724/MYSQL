-- CRUD

create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);

insert into player(player_name, player_position, player_age)
values
('Bobby', 'INF', 23),
('Luis', 'P', 30),
('Jonah', 'C', 28),
('Framber', 'P', 30),
('Pete', 'P', 27),
('Matt', 'INF', 29),
('Corbin', 'OF', 23),
('Juan', 'OF', 28);

-- select
select * from player;

select player_name from player;
select player_age from player;

select player_name, player_age from player;
select player_age, player_name from player;

--  compare these two
#1
select player_position, player_age, player_name from player;
#2
select player_id, player_name, player_age from player;

-- where clause
select * from player
where player_age = 23;

select  player_name, player_age from player
where player_age = 23;

-- >,<,=
select * from player where player_age > 28;
select * from player where player_age >= 28;

select * from player where player_age < 28;
select * from player where player_age <= 28;

-- find corbin
select * from player where player_name = 'Corbin';
select * from player where player_name = 'corbin';
select * from player where player_name = 'cOrBiN';
#case insensitive

select * from player where player_name = 'Corbi';#(X)
select * from player where player_name = 'Corbin ';#(X)

#select * from player where player_name = 'Corbin', 'Bobby'; (X)

select * from player where player_position = 'P';

select * from player where player_age < 28;
select * from player where player_position = 'P' and player_age < 28;

-- and & or
select * from player where player_name = 'Corbin' and player_name = 'Bobby';
select * from player where player_name = 'Corbin' or player_name = 'Bobby';

-- find age 27~29 & postion = P
select * from player where player_age >= 27;
select * from player where player_age <= 29;
select * from player where player_position = 'P';

select * from player where player_age >= 27 and player_age <= 29 and player_position = 'P';

-- between
select * from player where player_age between 27 and 29;
select * from player where player_age between 29 and 27; #(no data)

select * from player where player_age between 27 and 29 and player_position = 'P';
select * from player where (player_age between 27 and 29) and (player_position = 'P');



create table grocery(
grocery_id int primary key auto_increment,
grocery_name varchar(50),
grocery_category varchar(50),
grocery_reserves int
);

insert into grocery(grocery_name, grocery_category, grocery_reserves)
values
('Beef', 'Meat', 13),
('Milk', 'Dairy', 15),
('Spinach', 'Vegetables', 20),
('Cheese', 'Dairy', 5),
('Pork', 'Meat', 8),
('Beer', 'Beverage', 60),
('Cabbage', 'Vegetables', 21),
('Lamb', 'Meat', 16);

select * from grocery;

select  grocery_name, grocery_category, grocery_reserves from grocery;
select  grocery_id, grocery_name from grocery where grocery_id between 3 and 7;
select  grocery_id, grocery_name,grocery_category from grocery where grocery_category = 'meat';

-- aliases
select * from player;
select player_name, player_position, player_age from player;

select player_name as 球員姓名, player_position as 球員守位, player_age as 球員年齡 from player;
select player_name as '球員 姓名', player_position as '球員 守位', player_age as '球員 年齡' from player;
select player_name 球員姓名, player_position 球員守位, player_age  球員年齡 from player;

-- update
select * from player;


-- find player_position = 'P'
select * from player where player_position = 'P';

# update player set player_position = 'Pitcher';
select * from player;
# drop table player;

create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);
select * from player;

update player set player_position = 'Pitcher' where player_position ='P';
select * from player;

-- Pete Pitcher --> OF
update player set player_position = 'OF' where player_name = 'Pete';
select * from player;

update player set player_age = 26 where player_name = 'Bobby';
select * from player;
select player_name, player_age from player;

update player set player_name = 'Jonathan' where player_name = 'Jonah';
select * from player;
select player_name, player_age from player where player_name = 'Jonathan' or player_name = 'Bobby';

-- delete --
-- find Jonathan
select * from player where player_name = 'Jonathan';

#delete from player;
select * from player;

#drop table player;

delete from player where player_name = 'Jonathan';
select * from player;

-- alter table setting
#rename table name
select * from employee;

alter table employee rename 員工啦;
select * from 員工啦;

#rename column name
select * from members;
alter table members change column member_age 員工年齡 int;
select * from members;
# modify
