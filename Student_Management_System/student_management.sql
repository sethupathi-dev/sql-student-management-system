-- CREATE DATABASE
CREATE DATABASE Projects;

-- SELECT DATABASE
USE Projects;

-- =========================================
-- STUDENT TABLE
-- =========================================
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    department VARCHAR(50)
);

-- =========================================
-- COURSE TABLE
-- =========================================
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100),
    trainer VARCHAR(50)
);

-- =========================================
-- MARKS TABLE
-- =========================================
CREATE TABLE marks (
    mark_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    score INTEGER
);

-- =========================================
-- INSERT STUDENT DATA
-- =========================================
INSERT INTO students VALUES
(1, 'Arun', 20, 'CSE'),
(2, 'Priya', 21, 'ECE'),
(3, 'Rahul', 19, 'IT'),
(4, 'Sneha', 22, 'CSE'),
(5, 'Karthik', 20, 'ECE');

-- =========================================
-- INSERT COURSE DATA
-- =========================================
INSERT INTO courses VALUES
(101, 'SQL Basics', 'Kumar'),
(102, 'Python', 'Divya'),
(103, 'DBMS', 'Ravi');

-- =========================================
-- INSERT MARKS DATA
-- =========================================
INSERT INTO marks VALUES
(1, 1, 101, 85),
(2, 2, 101, 90),
(3, 3, 102, 88),
(4, 4, 103, 95),
(5, 5, 102, 80);

-- =========================================
-- VIEW ALL STUDENTS
-- =========================================
SELECT * FROM students;

-- =========================================
-- VIEW ALL COURSES
-- =========================================
SELECT * FROM courses;

-- =========================================
-- VIEW ALL MARKS
-- =========================================
SELECT * FROM marks;

-- =========================================
-- STUDENTS FROM CSE DEPARTMENT
-- =========================================
SELECT *
FROM students
WHERE department = 'CSE';

-- =========================================
-- STUDENTS OLDER THAN 20
-- =========================================
SELECT *
FROM students
WHERE age > 20;

-- =========================================
-- SORT STUDENTS BY AGE
-- =========================================
SELECT *
FROM students
ORDER BY age DESC;

-- =========================================
-- FIND HIGHEST SCORE
-- =========================================
SELECT MAX(score) AS highest_score
FROM marks;

-- =========================================
-- FIND AVERAGE SCORE
-- =========================================
SELECT AVG(score) AS average_score
FROM marks;

-- =========================================
-- JOIN STUDENTS AND MARKS
-- =========================================
SELECT 
    students.name,
    marks.score
FROM students
JOIN marks
ON students.student_id = marks.student_id;

-- =========================================
-- JOIN ALL TABLES
-- =========================================
SELECT
    students.name,
    students.department,
    courses.course_name,
    marks.score
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id;

-- =========================================
-- AVERAGE MARKS BY DEPARTMENT
-- =========================================
SELECT
    s.department,
    AVG(m.score) AS average_marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id
GROUP BY s.department;

-- =========================================
-- TOP PERFORMING DEPARTMENT LIST    
-- =========================================
SELECT
    s.department,
    AVG(m.score) AS average_marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id
GROUP BY s.department
ORDER BY average_marks DESC
;


