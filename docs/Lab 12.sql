--1. Concatenate Course Name and Semester
SELECT course_name || ' - ' || semester AS course_semester
FROM courses;



--2. Find Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time = 'Friday';



--3. Upcoming Assignments
SELECT course_id, title, due_date
FROM assignments
WHERE due_date > DATE('now');



--4. Count Assignments by Status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;



--5. Longest Course Name
SELECT MAX(LENGTH(course_name)) AS max_length
FROM courses;

SELECT course_name
FROM courses
WHERE LENGTH(course_name) = (SELECT MAX(LENGTH(course_name)) FROM courses);



--6. Uppercase Course Names
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;


--7. Assignments Due in September
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';


--8. Assignments with Missing Due Dates
SELECT course_id, title
FROM assignments
WHERE due_date IS NULL;

