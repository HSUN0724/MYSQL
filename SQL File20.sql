-- stored procedure --

select * from ports;


delimiter //
create procedure select_ports()
begin
select * from passengers;
select * from ports;
end //
delimiter ;

call select_ports();
# drop procedure select_ports; (刪除)

-- stored procedure with parameter --
select * from ports;
select city from ports where portsid = id; #(x)

delimiter //
create procedure ports_city (in portsid int)
begin
select city from ports where portsid = id;
end //
delimiter ;
call ports_city(2);
call ports_city(3);
call ports_city(4); #(x)

-- 練習 --
select * from passengers;

delimiter //
create procedure pname_portid (in pname varchar(200))
	begin
		select * from passengers where name like pname;
	end //
delimiter ;

call pname_portid('braund'); #(x)
call pname_portid('%william%');
call pname_portid('% william %');
#drop procedure pname_portid;

call pname_portid('% john %');
call pname_portid('% sam %');

call pname_portid('williams,%');
