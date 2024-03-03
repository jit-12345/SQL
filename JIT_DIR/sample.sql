CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE IF NOT EXISTS student(
roll INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(roll,name,marks,grade,city)
VALUES
(101,"anil",78,"C","PUNE"),
(102,"bhumika",93,"A","Mumbai"),
(103,"dhruv",85,"B","Kolkata"),
(104,"chetan",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");



INSERT INTO student VALUES(107,"Tanu",77,"C","Puri");
INSERT INTO student VALUES(108,"Harry",85,"B","Rachi");

TRUNCATE TABLE student;

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET grade="O"
WHERE grade="A";
SELECT * FROM student;

UPDATE student
SET marks=82
WHERE marks=12;

UPDATE student
SET marks=marks+1;

UPDATE student
SET marks=33
WHERE marks=83;

DELETE FROM student
WHERE marks<=33;

ALTER TABLE student
CHANGE name stu_name VARCHAR(20) NOT NULL;

DELETE FROM student
WHERE marks<80;

ALTER TABLE student
DROP COLUMN grade;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student 
(roll,name,marks,grade,city,age)
VALUES
(111,"JIT",99,"O","KOLKATA",22);

INSERT INTO student VALUES (1,"RAM",100,"O","KOLKATA",100);

UPDATE student
SET stu_age=100
WHERE stu_age=99;

ALTER TABLE student
DROP stu_age;

ALTER TABLE student
RENAME TO stu;

SELECT * FROM stu;

ALTER TABLE stu
RENAME TO student;

SELECT roll, name, marks FROM student;
SELECT city FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks > 80;

SELECT * FROM student;

SELECT * FROM student WHERE city = "Delhi";
SELECT city FROM student WHERE marks>80;
SELECT * FROM student WHERE marks > 80 AND city="Delhi";
SELECT * FROM student WHERE marks % 10=2 AND marks+20 > 100;
SELECT * FROM student WHERE marks>=90;
SELECT * FROM student WHERE marks>=90 OR CITY="Mumbai";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Mumbai","Delhi");
SELECT * FROM student WHERE city IN ("Vellore","Chennai");
SELECT * FROM student WHERE city NOT IN ("Mumbai","Delhi");
SELECT roll,name FROM student LIMIT 3;
SELECT * FROM student WHERE marks>75 LIMIT 4;
SELECT roll FROM student WHERE marks>75 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT SUM(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(roll)
FROM student;

SELECT city,COUNT(roll),AVG(marks)
FROM student
GROUP BY city;

SELECT city,name,COUNT(roll),AVG(marks)
FROM student
GROUP BY city,name;

SELECT city,AVG(marks),COUNT(roll)
FROM student
GROUP BY city
ORDER BY AVG(marks) ASC;

SELECT city,count(roll)
FROM student
GROUP BY city;

SELECT city, count(marks)
FROM student
WHERE marks<85
GROUP BY city
HAVING max(marks)>90
ORDER BY city DESC;
