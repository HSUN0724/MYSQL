-- subquery --
select * from passengers;

# 1.find age = 70
select * from passengers where pclass = 2;
select max(age) from passengers where pclass =2;

# 2.find passengers where age > 70
select * from passengers where age > 70;

select * from passengers where age >( select max(age) from passengers where pclass = 2);

select pclass, name, age from passengers where age > (select max(age) from passengers where pclass = 2);




