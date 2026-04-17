# 10 DDL Practice Questions
# DDL = structure of database/table.
# 1 Create a new table named Library with columns book_id, book_name, author, and price.
# 2 Add a new column semester to the Students table.
# 3 Modify the phone column in Students to VARCHAR(20).
# Add a NOT NULL constraint to course_name in Courses.
# Add a new column experience_years to Teachers.
# Rename the table Teachers to Faculty.
# Rename the column city in Students to student_city.
# Drop the column grade from Enrollments.
# Add a CHECK constraint so salary in Teachers cannot be below 30000.
# Drop the Library table.
USE sql_practice;

CREATE TABLE `Library`(
    book_id INT PRIMARY KEY,
    book_name VARCHAR(50) NOT NULL,
    author VARCHAR(60) NOT NULL,
    price INT NOT NULL
);

SELECT *
FROM Students;

SELECT *
FROM Courses;

SELECT *
FROM Teachers;

SELECT *
FROM Enrollments;

ALTER TABLE Students
ADD COLUMN semester VARCHAR(10) NOT NULL;

ALTER TABLE Students
MODIFY phone VARCHAR(20) NOT NULL ;

ALTER TABLE Courses
MODIFY course_name VARCHAR(100) NOT NUll;

ALTER TABLE Teachers
ADD COLUMN experience_years INT ;

ALTER TABLE Teachers
RENAME COLUMN teacher_name to faculty;

ALTER TABLE Students
RENAME COLUMN city to student_city;

ALTER TABLE Enrollments
DROP COLUMN grade;

ALTER TABLE Teachers
ADD CONSTRAINT chk_salary CHECK ( salary > 30000 );

DROP TABLE Library;





