-- limit & offset --

select * from passengers;

select * from passengers limit 10;
select * from passengers limit 100;
select * from passengers limit 500;
select * from passengers limit 890;
select * from passengers limit 892;#891 

-- limit with index and count
select * from passengers limit 5, 20;
select * from passengers limit 50, 200;
select * from passengers limit 800, 200; #count 91


-- limit with offest
select * from passengers limit 20 offset 5;

--
select * from passengers limit 0, 20;
select * from passengers limit 20, 20;
select * from passengers limit 40, 20;

-- 練習 --
select * from passengers order by portid limit 820;
select * from passengers order by portid limit 2, 820;
select * from passengers order by portid limit 820 offset 2;
