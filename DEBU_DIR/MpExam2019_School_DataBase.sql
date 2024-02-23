CREATE DATABASE School;
USE School;

-- create table our School Madhyamik Batch(2019).

CREATE TABLE MpBatch_2019( -- U can create more col for more info.
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(3)
);

INSERT INTO MpBatch_2019
(rollNo,name,marks,grade)
VALUES
(1,"Debu",84,"A"),
(2,"Kuntal",95,"A+"),
(3,"Arpan",99,"A++"),
(4,"Subho",91,"A+"),
(5,"Chitra",98,"A++"),
(6,"Kiran",70,"B"),
(7,"Santosh",90,"A+");

DROP TABLE MpBatch_2019; -- i need to run this line coz i have to change the grade char size.

-- so, i only show the students name and their marks from the Table.

SELECT * FROM MpBatch_2019; -- when  i write astrarick means select all col. Print the whole table data.
SELECT name, marks FROM MpBatch_2019;
SELECT DISTINCT marks FROM MpBatch_2019; -- DISTINCT Shows me the unique value.

SELECT * FROM MpBatch_2019 WHERE marks>90; -- Use here WHERE Clause

-- In "WHERE" Clause there are multiple Operators.
SELECT *
FROM MpBatch_2019
WHERE marks+10 >100;

-- Comparision Operator.
SELECT *
FROM MpBatch_2019
WHERE marks < 90;

-- logical Operator.
SELECT *
FROM MpBatch_2019
WHERE marks < 90 AND grade = "B";

-- If we select data in particular Range.
SELECT *
FROM MpBatch_2019
WHERE marks BETWEEN 84 AND 90;

-- IN and NOT IN Caluse.
SELECT *
FROM MpBatch_2019
WHERE grade IN ("A++");

-- NOT IN
SELECT *
FROM MpBatch_2019
WHERE grade NOT IN ("A++");

-- Start Here From "LIMIT CLAUSE"