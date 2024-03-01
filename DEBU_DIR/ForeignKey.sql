USE Debu;
-- We are learning here Revisiting FK(Foren key)


CREATE TABLE Course(

	courseId INT PRIMARY KEY,
    Coursename VARCHAR(50)
);

CREATE TABLE Teacher(

	teacherId INT PRIMARY KEY,
    Teachername VARCHAR(50),
    -- Bellow line is to link with Teacher and Courses.
    deptId INT,
    FOREIGN KEY (deptId) REFERENCES Course(courseId)
);


INSERT INTO Course
(courseId,Coursename)
VALUES
(101,"English"),
(102,"Bengali"),
(103,"Math"),
(104,"Physics");


INSERT INTO Teacher
(teacherId,Teachername,deptId)
VALUES
(1,"Sourav Babu, 101"),
(2,"Santi Babu",102),
(3,"Robin Babu",103),
(4,"Achinta Babu", 104);




