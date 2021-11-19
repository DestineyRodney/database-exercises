USE employees;

# ORDER BY

# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no;

-- Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

#Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date LIKE '%-12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%-12-25' AND hire_date like '199%';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date like '%-12-25' AND hire_date like '199%' ORDER BY birth_date, hire_date DESC;
