/*DML = changing data inside tables.
Insert one new department into Departments.
Insert one new student into Students.
Insert one new course into Courses.
Update the city of student with student_id = 101.
Update marks of enrollment 401 to 90.
Increase salary of all teachers by 10%.
Delete the student with student_id = 105.
Delete all courses that belong to department 4.
Update the grade to 'A' for all students with marks greater than 85.
Change the department of student 102 from Mechanical to Computer Science.*/

SELECT *
FROM Students;

SELECT *
FROM Courses;

SELECT *
FROM Teachers;

SELECT *
FROM Enrollments;

SELECT *
FROM Departments;

INSERT INTO Departments VALUES
(5,"Law","Block E");

INSERT INTO Students VALUE
(1,"Sam","Miranda","M",'2002-05-10',"sam@student.uq.edu.au",
 "9876583491","Mumbai",5,'2002-05-10',2);

UPDATE Students
SET student_city = 'Brisbane'
WHERE student_id = 101;

UPDATE Enrollments
SET marks = 90
WHERE enrollment_id = 401;

UPDATE Teachers
SET salary = (salary * 0.1) + salary
