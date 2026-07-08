-- order by --
select * from passengers;

select * from passengers order by pclass;
select * from passengers order by portid;

select * from passengers order by age;
select * from passengers order by name;

-- double order by --
select * from passengers order by pclass, portid;
select * from passengers order by portid, pclass;


-- desc (descend) --
select * from passengers order by name desc;

-- 練習 --
select * from passengers order by portid;
select * from passengers order by -portid asc;
select * from passengers order by -portid desc;

