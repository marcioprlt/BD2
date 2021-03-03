USE psdb;

#1
SELECT employees.first_name, employees.last_name, salaries.salary, salaries.from_date, salaries.to_date
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.emp_no = 10006
ORDER BY salaries.from_date;

#2
SELECT employees.first_name, employees.last_name, departments.dept_name, dept_emp.from_date, dept_emp.to_date
FROM employees INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no;

#3
SELECT employees.first_name, employees.last_name, departments.dept_name
FROM employees LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE employees.emp_no IN (110022, 110085, 10006);

#4
insert into departments
values ('d99','Compras internas');

SELECT departments.dept_name, employees.first_name, employees.last_name
FROM employees JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
RIGHT JOIN departments
ON departments.dept_no = dept_manager.dept_no;

###la consulta devuelve una lista de todos los departamentos
###en la mayoría de los casos junto a quienes son o fueron sus gerentes
###pero gracias al right join también muestra los departamentos que no han tenido ningún gerente