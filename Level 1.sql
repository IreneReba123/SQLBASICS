select count(*) from yr_2007 where global_active_power >= 5 
select count(*) from yr_2007 where global_active_power > 5 
 and Date between '2007-04-01' and '2007-07-31'
 
 
 select distinct(sub_metering_3) from yr_2006
 
select (select count(distinct(sub_metering_3)) from yr_2006) as submeter3_distinct, 
	(select count(distinct(sub_metering_1)) from yr_2006) as submeter1_distinct 

select month(date),sum(global_active_power) from yr_2007 
group by month(date) 

select month(date),sum(global_active_power) from yr_2007 
group by month(date) having sum(global_active_power) > 50000

select month(date),avg(global_active_power) from yr_2007 
group by month(date) order by (avg(global_active_power))desc


