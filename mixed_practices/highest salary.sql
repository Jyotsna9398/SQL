select salary from employees;

--3rd highest salary 1400
select last_name,salary from employees where salary =(
select max(salary) from employees where salary < 
(select max(salary) from employees where salary < 
(select max(salary) from employees)));