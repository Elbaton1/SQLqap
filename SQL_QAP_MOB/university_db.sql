CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  enrollment_date DATE
);
CREATE TABLE professors (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  department TEXT
);
CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  course_name TEXT,
  course_description TEXT,
  professor_id INTEGER
);
CREATE TABLE enrollments (
  student_id INTEGER,
  course_id INTEGER
);
INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES
('John', 'Doe', 'john@example.com', '2023-01-10'),
('Jane', 'Smith', 'jane@example.com', '2023-01-11'),
('Mike', 'Brown', 'mike@example.com', '2023-01-12'),
('Sara', 'Davis', 'sara@example.com', '2023-01-13'),
('Tom', 'Wilson', 'tom@example.com', '2023-01-14');

SELECT * FROM students;


INSERT INTO professors (first_name, last_name, department) VALUES
('Alice', 'Johnson', 'Physics'),
('Bob', 'Lee', 'Mathematics'),
('Carol', 'Kim', 'Chemistry'),
('Dave', 'Miller', 'Biology');

SELECT * FROM professors;

INSERT INTO courses (course_name, course_description, professor_id) VALUES
('Physics 101', 'Intro to Physics', 1),
('Calculus I', 'Intro to Calculus', 2),
('Chemistry 101', 'Intro to Chemistry', 3);

SELECT * FROM courses;

SELECT * FROM students;
SELECT * FROM courses;

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 1);

SELECT * FROM enrollments;

SELECT * FROM students;

SELECT * FROM courses;

SELECT students.first_name, students.last_name
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.id
WHERE courses.course_name = 'Physics 101';

