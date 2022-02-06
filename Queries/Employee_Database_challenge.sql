-- DELIVERABLE 1

-- Follow the instructions below to complete Deliverable 1.
SELECT empl.emp_no,
       empl.first_name,
       empl.last_name,
       ti.title,
       ti.from_date,
       ti.to_date
INTO retirement_titles
FROM employees as empl
INNER JOIN titles as ti
ON (empl.emp_no = ti.emp_no)
WHERE (empl.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by empl.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(u_t.emp_no),
u_t.title
INTO retiring_titles
FROM unique_titles as u_t
GROUP BY title 
ORDER BY COUNT(title) DESC;


-- DELIVERABLE 2

-- Write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON(empl.emp_no) empl.emp_no, 
    empl.first_name, 
    empl.last_name, 
    empl.birth_date,
    dep.from_date,
    dep.to_date,
    ti.title
INTO mentorship_eligibilty
FROM employees as empl
Left outer Join dept_emp as dep
ON (empl.emp_no = dep.emp_no)
Left outer Join titles as ti
ON (empl.emp_no = ti.emp_no)
WHERE (empl.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY empl.emp_no;
