use employees;
select titles.title, count(titles.title) as employee_count 
from titles inner join employees on titles.emp_no = employees.emp_no where employees.birth_date > "1965-01-01" group by titles.title;
select titles.title, round(avg(salaries.salary), 2) as avg_salary 
from titles inner join salaries on salaries.emp_no = titles.emp_no group by titles.title;
select sum(salaries.salary) as marketing_salary_spent 
from salaries inner join dept_emp on salaries.emp_no = dept_emp.emp_no 
where dept_emp.dept_no = "d001" and salaries.from_date > "1989-12-31" and salaries.to_date < "1993-01-01";