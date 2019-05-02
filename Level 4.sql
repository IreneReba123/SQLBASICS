########################################
####         Advanced Level        ######
########################################


1. What is the number of managers hired each calendar year. The table should look like below:

(Hint : The managers details are stored in dept_manager table)

(just a sample)

calendar_year       managers
#############      ##########
1990                 10
1991                 17
1992                 17
1993                 21
1994                 19
1995                 20
1996                 10
1997                 11

select (year(from_date))calender_year,count(emp_id) from dept_manager 
group by calender_year  

2. What will be the department wise break up of managers


(just a sample)

calendar_year  department_name        employee
#############  ###############        ########    
1990             Research                1
1990             Sales                   1
1991             Customer Service        2
1991             Development             1
1991             Finance                 2
1991             Marketing               2
1991             Production              3
1991             Quality Management    2
1991             Research              1
1991             Sales                 4
1992             Customer Service      2
            

select (year(from_date))calender_year, (departments.dept_name)department_name,count(emp_id)employee
 from dept_manager , departments
 where dept_manager.dept_no=departments.dept_no
group by calender_year , department_name


3. What is the number of male managers and female managers hired each calendar year from the year 1990

The table should be like below ( sample :disappointed:



calendar_year        gender       managers
#############       ##########    ##########
1990                M                8
1990                F                2
1991                M                12
1991                F                5
1992                M                9
1992                F                8
1993                M                10

select (year(dept_manager.from_date))calender_year, (employees.gender)gender,count(dept_manager.emp_id)managers
 from dept_manager , employees
 where dept_manager.emp_id=employees.emp_id and year(dept_manager.from_date) >= '1990'
group by calender_year , gender