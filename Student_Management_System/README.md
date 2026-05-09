# Student Management System SQL Project

## Project Overview
This project is a beginner SQL database project created using MySQL.

The project manages:
- Students
- Courses
- Marks

It demonstrates basic and intermediate SQL concepts.

---

## Technologies Used
- MySQL
- VS Code

---

## SQL Concepts Used
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- JOIN
- Aggregate Functions
- LIMIT

---

## Tables Created

### Students Table
Stores student details:
- student_id
- name
- age
- department

### Courses Table
Stores course information:
- course_id
- course_name
- trainer

### Marks Table
Stores student marks:
- mark_id
- student_id
- course_id
- score

---

## Sample Queries

### View all students
```sql
SELECT * FROM students;