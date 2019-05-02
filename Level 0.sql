#1. Display the rows of table yr_2006
select * from yr_2006
#2. Show the first 10 rows of yr_2006; 
#(hint : Use 'Limit' function)
select * from yr_2006 limit 10

#3. what is the highest voltage in the year 2006?
select max(voltage) from yr_2006 
# Now try to use the function round to round the result to 1 decimal point
select max(round(voltage,1)) from yr_2006
#4. in which day did the global_active_power reach the highest value?
select date,max(global_active_power) from yr_2006

#5. print the top 30 rows of 2007 with the highest Submetering 1 consumption, in descending order)
select * from yr_2007 order by sub_metering_1 desc limit 30

# Now, order your results also by Voltage
#(Hint: you can use the "order by" clause on 2 variables)
select * from yr_2007 order by sub_metering_1 desc,voltage limit 30  