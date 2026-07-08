-- like --

select * from passengers;

select *from passengers where name = 'Braund, Mr. Owen Harris';
select *from passengers where name = 'Cumings, Mrs. John Bradley (Florence Briggs Thayer)';

select * from passengers where name like 'William'; #(x)
select * from passengers where name like '%William%'; 
select * from passengers where name like 'William%'; # 顯示字串之後的文字
select * from passengers where name like '%William'; # 顯示字串之前的文字
select * from passengers where name like '% William %' and sex = 'male'; #空格是英文字串才有的找法,不適用中文

-- 練習 --- 練習 --
select * from passengers where name like 'Williams, %'; 

-- wildcard --
-- find smith
select * from passengers where name like '%smith%';
select * from passengers where name like 'smith,%';

-- find ( or )
select * from passengers where name like '%(%';
select * from passengers where name like '%)%';
select * from passengers where name like '%)';

-- or --
select * from passengers where name like "%'Henry'%"; 
select * from passengers where name like '%"Bessie"%'; 
#如果姓氏有單引號,可以轉雙引號搜尋

-- double like --
select * from passengers where name like '%William%' and name like '%Charles%';

-- find digital place
select * from passengers;
select * from passengers where ticketid like '_';
select * from passengers where ticketid like '__';
select * from passengers where ticketid like '___';
select * from passengers where ticketid like '____'; #(X)

-- 練習 --
select * from passengers where name like '% William %' and ticketId like '__' and sex = 'male';