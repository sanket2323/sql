INSERT INTO Departments VALUES
(1, 'Computer Science', 'Block A'),
(2, 'Mechanical', 'Block B'),
(3, 'Electronics', 'Block C'),
(4, 'Civil', 'Block D');

INSERT INTO Students VALUES
(101, 'Amit', 'Sharma', 'M', '2002-05-10', 'amit@gmail.com', '9876543210', 'Mumbai', 1, '2022-06-15'),
(102, 'Priya', 'Patel', 'F', '2001-09-21', 'priya@gmail.com', '9876543211', 'Pune', 2, '2022-06-16'),
(103, 'Rahul', 'Verma', 'M', '2003-01-12', 'rahul@gmail.com', '9876543212', 'Delhi', 1, '2023-01-10'),
(104, 'Sneha', 'Iyer', 'F', '2002-11-30', 'sneha@gmail.com', '9876543213', 'Chennai', 3, '2022-07-01'),
(105, 'Karan', 'Mehta', 'M', '2001-07-14', 'karan@gmail.com', '9876543214', 'Ahmedabad', 2, '2021-08-20');

INSERT INTO Courses VALUES
(201, 'Database Systems', 4, 1),
(202, 'Operating Systems', 3, 1),
(203, 'Thermodynamics', 4, 2),
(204, 'Digital Electronics', 3, 3),
(205, 'Structural Analysis', 4, 4);

INSERT INTO Teachers VALUES
(301, 'Dr. Rao', 75000, 1, '2018-06-01'),
(302, 'Dr. Mehta', 68000, 2, '2019-07-15'),
(303, 'Dr. Nair', 72000, 3, '2020-08-10'),
(304, 'Dr. Singh', 70000, 4, '2017-01-12');

INSERT INTO Enrollments VALUES
(401, 101, 201, 301, '2023-01-15', 85, 'A'),
(402, 102, 203, 302, '2023-01-16', 78, 'B'),
(403, 103, 202, 301, '2023-02-01', 92, 'A'),
(404, 104, 204, 303, '2023-02-03', 67, 'C'),
(405, 105, 203, 302, '2023-02-05', 74, 'B'),
(406, 101, 202, 301, '2023-02-10', 88, 'A'),
(407, 103, 201, 301, '2023-02-12', 81, 'B');