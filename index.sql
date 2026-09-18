-- 1. Create a new database named training_db
CREATE DATABASE training_db;

-- 2. The manager decides the name is confusing. Drop the database training_db
DROP DATABASE training_db;

-- 3. Re-create the database with the correct name: employee_training_db
CREATE DATABASE employee_training_db;

-- Switch to the new database
USE employee_training_db;

-- 4. Create a table named courses with the required columns
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    price DECIMAL(6,2),
    start_date DATE
);

-- 5. Rename the table courses to training_courses
RENAME TABLE courses TO training_courses;

-- 6. Drop the price column from the training_courses table
ALTER TABLE training_courses
DROP COLUMN price;

-- 7. Use ALTER TABLE to:
-- a) Add a column duration_days (INT)
ALTER TABLE training_courses
ADD COLUMN duration_days INT;

-- b) Rename the column start_date to course_start
ALTER TABLE training_courses
RENAME COLUMN start_date TO course_start;

-- c) Drop the column duration_days (assume it was added by mistake)
ALTER TABLE training_courses
DROP COLUMN duration_days;

-- 8. Insert one course record into the training_courses table
INSERT INTO training_courses (course_id, course_name, course_start)
VALUES (101, 'Introduction to SQL', '2026-10-01');
