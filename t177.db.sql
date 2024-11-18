-- Lab 11 - SQL Queries

-- 1. Assignments for a Specific Course
-- Display the title and due_date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- 2. Earliest Assignment Due Date
-- Find the earliest assignment due date in the assignments table
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;

-- 3. Latest Assignment Due Date
-- Find the latest assignment due date in the assignments table
SELECT MAX(due_date) AS latest_due_date
FROM assignments;

-- 4. Assignments Due on a Specific Date
-- Find the title and course_id of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- 5. Find All Assignments Due in October 2024
-- Display the title and due_date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6. Find the Most Recent Completed Assignment
-- Find the most recent due_date of assignments with a status of "Completed"
SELECT MAX(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';

-- Optional 1: Count of "Not Started" Assignments
-- Find the total number of assignments with a status of "Not Started"
SELECT COUNT(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Optional 2: Find Courses with Labs on Tuesday
-- Find the course_id and course_name of courses that have lab sessions on Tuesday
SELECT course_id, course_name
FROM courses
WHERE schedule LIKE 'Tue%';

-- Optional 3: Write a query that joins the two tables
-- Find the course_name, title, and due_date of assignments along with their course
SELECT c.course_name, a.title, a.due_date
FROM courses c
JOIN assignments a 
  ON c.course_id = a.course_id
ORDER BY a.due_date;
