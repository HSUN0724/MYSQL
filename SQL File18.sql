-- case --
select * from passengers;
select * from ports;

select id , name,
case
when portId = 1 then 'Southampton'
when portId = 2 then 'Cherbourg'
when portId = 3 then 'Queenstown'
else '我不知道'
end as 登船點
from passengers;