1. Create a two column table Department name and employee id like below:

select (a.dept_name)Department, (b.emp_id)EmployeeID from departments a, dept_emp b 
where a.dept_no=b.dept_no

dept_name            emp_id
#########           ######
Production          10004
Human Resources     10005
Development         10006
Research              10007
Development         10008
Quality Management  10009
Production          10010




2. show the employee count by department name wise, sorted alphabetically on department name.

select (a.dept_name)Department, (count(b.emp_id))EmployeeID from departments a, dept_manager b 
where a.dept_no=b.dept_no group by Department order by Department asc

department_name  employee_count
###############  ##############
Customer Service    23598
Development            85719
Finance                17359
Human Resources        17798
Marketing            20223
Production            73495
Quality Management    20132
Research            21137
Sales                52262




3. Join 2 tables employees and department_employee

select * from employees, dept_emp where employees.emp_id=dept_emp.emp_id


4. Count the number of employees by each calendar year ( take the value of year from from_date)

select (year(from_date))calender_year,(count(emp_id))employee_count from dept_emp 
group by calender_year order by calender_year asc
calendar_year     employee_count
#############     ############
2002                 1082
2001                 1918
2000                 3183
1999                 15275
1998                 14959
1997                 14725
1996                 14633



5. Count the number of employees by each calendar year ( take the value of year from from_date) ordered by calendar year
exlcuding all years before 1990.

select (year(from_date))calender_year,(count(emp_id))employee_count from dept_emp 
where (year(from_date)) >= ('1990')
group by calender_year order by calender_year asc
(just a sample)

calendar_year     employee_count
#############     ############
1990                 13604
1991                 13550
1992                 14076
1993                 14106
1994                 14187
1995                 14357




6. Count the number of employees by each calendar year (take the value of year from from_date) ordered by calendar year
exlcuding all years before 1990.

Divide the employee count based on gender.

select (year(dept_emp.from_date))calender_year,(employees.gender)gender,(count(dept_emp.emp_id))employee_count 
from dept_emp , employees
where dept_emp.emp_id=employees.emp_id and (year(from_date)) >= ('1990')
group by calender_year, gender order by calender_year asc

(just a sample)

calendar_year        gender    employee_count
#############     ##########    ############
1990                 M             8134
1990                 F             5470
1991                 M             8295
1991                 F             5255
1992                 M             8480
1992                 F             5596
1993                 M             8483
1993                 F             5623