# Pewlett-Hackard-Analysis


## Overview of Project
Bobby, an internal data/HR analyst at Pewlett Hackard (a 300,000+ employee organization) has been tasked with helping the company to combat job vacancies that accompany the future retirement of over tens of thousands of employees. To do so, he has been tasked with discovering which employees are eligible for the retirement package that Pewlett Hackard offers to its employees as a metric for understanding how many vacancies the organization should plan to have in order to create a future-proof plan for filling in those vacancies. This analysis also considers from what department and from which roles these retirement-vacanices will occur. Bobby has asked for our assistance with this task.

This challenge utilizes company data that was originally stores in various Excel/CSV files and imports them into a much more manageable (due to the sheer volume of data) PostgresSQL database that is manipulatable through SQL code and queries.

In this challenge we:
-Develop and utilize ERDs (Entity Relationship Diagrams)
-Convert ERDs to Logical Diagrams (That utilize and organize data table primary keys, foreign keys, and the relationships between columns among tables)
-Create and Connect Tables using SQL queries in PostgresSQL/pgAdmin
    -Utilizing JOINs, WHERE Conditionals, GROUP BYs, and ORDER BY
    -Droping, editing, and instering into tables using DROP TABLE, ALTER TABLE, & INSERT INTO
-Formulate new tables using existing tables and relationships using  INTOs

We were also tasked with analyzing how many outgoing employees and fresh employees would be eleigible for a mentorship program in order to smoothly transition and replace the outgoing employees with capable new ones for their roles/positions.

## Results
Upon conducting our analysis we've discovered that:

- Based on the discovered number of eligible retirees, we can deduce that a significant percentage of the current workforce are eligible to retire at any time. (total of 499908 employees)
  -90,398 retirement eligible employees
  -18.083% of the current workforce is eligible to retire
![retirement_eligibility_by_title](https://github.com/sterlingvm/Pewlett-Hackard-Analysis/blob/main/Resources/Retirement_Eligible_By_Title.png?raw=true)

- The breakdown of the list of job titles for the eligible retirees:
  - 32,452 Staff
  - 29,415 Senior Engineer
  - 14,221 Engineer
  - 8,047 Senior Staff
  - 4,502 Technique Leader
  - 1,761 Assistant Engineer

- 1940 employees are eligible for the mentorship program
![mentorship_eligibility](https://github.com/sterlingvm/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_Eligibility_Count.png?raw=true)

- Departments by retiree number Descending:
  - Development: 9281
  - Production: 8174
  - Sales: 5860
  - Customer Service: 2597
  - Research: 2413
  - Quality Management: 2234
  - Marketing: 2199
  - Human Resources: 1953
  - Finance: 1908
![retire_by_dept](https://github.com/sterlingvm/Pewlett-Hackard-Analysis/blob/main/Resources/Retire_By_Dept_DESC.png?raw=true)


## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
In order to replace all of the vacancies that occur due to the "silver tsunami" (A.K.A. the wave of retirement from Baby Boomers across the organization), a total of 90,398 vacancies will need to be filled once the silver tsunami takes its toll.

![retirees_by_title](https://github.com/sterlingvm/Pewlett-Hackard-Analysis/blob/main/Resources/Unique_Retirees_By_Title.png?raw=true)

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

Unfortunately not, we would only have 1,940 employees that could participat in the employee mentorship program.

![mentorship_eligibility](https://github.com/sterlingvm/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_Eligibility_Count.png?raw=true)
