-- try full titanic data
create database if not exists my_titanic;
use my_titanic;

-- load data from CSV

CREATE TABLE IF NOT EXISTS full_passengers(
  id INT(11), 
  pclass DECIMAL(10, 2), 
  survived DECIMAL(10, 2), 
  pname VARCHAR(100), 
  sex VARCHAR(50), 
  age INT(11),
  sibsp INT(11), 
  parch INT(11),
  ticket VARCHAR(100),
  fare DECIMAL(10, 2),
  cabin VARCHAR(50), 
  embarked VARCHAR(50),
  boat VARCHAR(50),
  body INT(11),
  homedest varchar(100)
 );
# drop table full_passengers;

LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/titanic_full_data.csv'
INTO TABLE full_passengers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id, pclass, survived, pname, sex, @age, sibsp, parch, ticket, @fare, cabin, embarked, boat, @body, homedest)
SET age = NULLIF(@age,''), fare = nullif(@fare, ''), body = nullif(@body, '');

select * from full_passengers limit 1350;

#1
select * from full_passengers limit 1350;
select sex, count(sex) as gender_counts from full_passengers group by sex;

#2
select * from full_passengers limit 1350;
select id ,pname from full_passengers limit 590 , 293;

#3
select * from full_passengers limit 1350;
select pname, survived from full_passengers where pname like 'Andersson,%' and ticket = 347082;

#4
select * from full_passengers limit 1350;
select * from full_passengers where pname like '%Brogren%';
select * from full_passengers where ticket = 347080;

#5
select * from full_passengers limit 1350;
select * from full_passengers where pname like '%Leonard%' and sex = 'male';
select * from full_passengers where pname like '%Leonard%' and sex = 'male' and ticket not in ('LINE');
select  id , pclass , pname from full_passengers where pname like '%Leonard%' and sex = 'male' and ticket not in ('LINE');

#6
select * from full_passengers limit 1350;
select  ticket, count(ticket) as ticket_count from full_passengers group by ticket order by count(ticket) desc limit 1;

#7
select * from full_passengers limit 1350;
# select pclass, sex, pname , avg(age) from full_passengers where sex = 'male' and pclass != '1' group by sex;
select pclass, sex, avg(age) from full_passengers where sex = 'male' and pclass != '1' group by pclass;

#8
select * from full_passengers limit 1350;
select embarked as '登船點', count(embarked) as '登船人數', round(count(embarked)/(select count(*) from full_passengers)*100,2)as '登船點占百分比' from full_passengers where embarked != '' group by embarked;
select count(*) from full_passengers;



