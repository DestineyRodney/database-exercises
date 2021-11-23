USE employees;
# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no
WHERE YEAR(de.to_date) = '9999' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(t.title) AS 'Total'
FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM departments d
         JOIN dept_manager AS de
              ON d.dept_no = de.dept_no
         JOIN employees AS e
              ON de.emp_no = e.emp_no
         JOIN salaries s
              ON s.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date  = '9999-01-01';