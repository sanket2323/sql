#Get all students with their department names.
SELECT student_id,first_name,last_name,Students.dept_id
FROM Students
LEFT JOIN Departments
ON Students.dept_id = Departments.dept_id;

# Show all courses along with their department name.
SELECT course_id,course_name,dept_name
FROM Courses
LEFT JOIN Departments
ON Courses.dept_id = Departments.dept_id;

#List all teachers and the department they belong to.
SELECT teacher_name,dept_name
FROM Teachers
LEFT JOIN Departments
ON Teachers.dept_id = Departments.dept_id;

# Show student names with the courses they enrolled in.
SELECT first_name, course_name
FROM Students AS s
LEFT JOIN Courses AS c
ON s.dept_id = c.dept_id;

#Find all students who scored more than 80 marks (with course name)
SELECT first_name,marks
FROM Students AS s
LEFT JOIN Enrollments AS e
ON s.student_id = e.student_id
WHERE e.marks > 80;

#Show average marks per course
SELECT c.course_id, c.course_name,AVG(e.marks) AS avg_marks
FROM Enrollments AS e
LEFT JOIN Courses AS c
ON e.course_id = c.course_id
GROUP BY c.course_id,c.course_name;
