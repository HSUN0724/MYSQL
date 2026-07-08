-- variables --
select @myname := 'Masataka Oniwa';
select @myname;

select @myname := 'Sekiro', @myhome := 'Ashina';
select @myname ,@myhome;

-- set values -- 
set @myname := 'Tim', @myhome = 'Taipei';
select  @myname ,@myhome;
select @myname := 'John', @myhome = 'Tainan';
select  @myname ,@myhome;

-- select @variables = --> 判斷式
select @myhome = 'Taipei';

-- now()
set @mytimestamp = now();
select @mytimestamp;

set @mytimestamp = current_timestamp;
select @mytimestamp;



