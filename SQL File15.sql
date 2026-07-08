--  distinct --

use  my_train_titanic;
select * from passengers;

-- select pclass --
select pclass from passengers;
select distinct pclass from passengers;
select distinct portid from passengers;

select distinct name from passengers;

-- 練習 --
select count(distinct pclass) as 'class_count' from passengers;

-- double distinct --
select distinct pclass from passengers;
select distinct sex from passengers;

select distinct pclass, sex from passengers;
select distinct pclass, sex, portid from passengers;

select count(distinct pclass, sex) from passengers;
select count(distinct pclass, sex, portid) from passengers;
