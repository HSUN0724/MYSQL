-- in & not in --
-- find portid  1, 3 --
select* from passengers where portId = 1 or portId = 3;
select* from passengers where portId in (1, 3);

-- find portid not  1, 3 --
select* from passengers where portId != 1 or portId != 3; #(x)
select* from passengers where portId != 1 and portId != 3;

select* from passengers where portId != 1 and portId != 3 or portId = null; #(x)
select* from passengers where portId is null or (portId != 1 and portId != 3);

-- 練習 --
select* from passengers where sex = 'male' and (portId != 2 and portId != 3);
select* from passengers where portId not in (2,3) and sex not in ('female');