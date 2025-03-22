-- Current_date, Age, Date_Part

SELECT * FROM employees;

SELECT
	first_name,
	birth_date,
	current_date,
	age(birth_date),
	age(hire_date),
	date_part('month', birth_date)
from employees;