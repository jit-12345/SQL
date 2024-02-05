CREATE DATABASE IF NOT EXISTS education;
USE education;

CREATE TABLE IF NOT EXISTS student(
stu_id INT PRIMARY KEY,
name VARCHAR(10)
);

INSERT INTO student (stu_id,name) 
VALUES 
(101,"Jit"),
(102,"Samriddhi"),
(103,"Ipsita");

SELECT * FROM student;

CREATE TABLE IF NOT EXISTS course(
id INT PRIMARY KEY,
course VARCHAR(10)
);

INSERT INTO course 
(id,course)
VALUES
(102,"English"),
(103,"Bengali"),
(104,"Physics"),
(105,"Chemistry");

SELECT * FROM course;

SELECT *
FROM student as s
INNER JOIN course as c
ON s.stu_id=c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.stu_id=c.id;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.stu_id=c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.stu_id=c.id
UNION 
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.stu_id=c.id;



SELECT *
FROM student as s
LEFT JOIN course as c
ON s.stu_id=c.id
WHERE c.id IS NULL;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.stu_id=c.id
WHERE s.stu_id IS NULL;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.stu_id=c.id
WHERE c.id IS NULL
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.stu_id=c.id
WHERE s.stu_id IS NULL;

CREATE TABLE IF NOT EXISTS employee(
id INT PRIMARY KEY,
name VARCHAR(20),
manager_id INT );

INSERT INTO employee
(id,name,manager_id)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT a.name AS manager_name,b.name
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT name FROM employee
UNION
SELECT name FROM employee;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;



CREATE TABLE IF NOT EXISTS student2(
roll INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student2
(roll,name,marks,grade,city)
VALUES
(101,"anil",78,"C","PUNE"),
(102,"bhumika",93,"A","Mumbai"),
(103,"dhruv",85,"B","Kolkata"),
(104,"chetan",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

INSERT INTO student2 VALUES(107,"RABON",68,"C","HYDRABAD");
INSERT INTO student2 VALUES(108,"JONY",74,"C","ORISHA");

SELECT AVG(marks)
FROM student2;

SELECT name,marks
FROM student2
WHERE marks>74.333;


SELECT name,marks
FROM student2
WHERE marks>(SELECT AVG(marks) FROM student2);

SELECT roll
FROM student2
WHERE roll % 2 = 0;

SELECT name,marks
FROM student2
WHERE roll IN (102,104,106,108);

INSERT INTO student2 VALUES(110,"RAM",100,"0","BHARAT");

SELECT name ,marks
FROM student2
WHERE (roll%2=0);

SELECT name ,marks
FROM student2
WHERE roll IN (
SELECT roll
FROM student2
WHERE roll % 2 = 0);


SELECT * 
FROM student2
WHERE city="Delhi";

SELECT MAX(marks)
FROM student2
WHERE city ="Delhi";

SELECT MAX(marks) AS max
FROM (SELECT * FROM student2 WHERE city = "Delhi") AS a;

SELECT (SELECT MAX(marks) FROM student2),name
FROM student2;


CREATE VIEW view1 AS
SELECT name,marks,city FROM student2;

SELECT * FROM view1;


DROP VIEW view1;



