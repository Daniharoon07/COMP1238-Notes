--Lab 11, Step 4 - Exercise Questions


--1. Assignments for a Specific Course, Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


--2.Earliest Assignment Due Date, Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT min(due_date) AS earliest_due_date
FROM assignments;


--3.Latest Assignment Due Date, Write a query to find the latest assignment due date in the assignments table.
SELECT max(due_date) AS latest_due_date
FROM assignments;


--4.Assignments Due on a Specific Date, Write a query to find the title and course_id of assignments due on 2024-10-08.
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


--5.Find All Assignments Due in October, Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


--6.Find the Most Recent Completed Assignment, Write a query to find the most recent due_date of assignments with a status of "Completed".
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
