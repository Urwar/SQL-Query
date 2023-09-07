CREATE DATABASE college;                                                         -- Create Database 
USE college;
CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS collegee;
CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);
INSERT INTO student VALUES(1,"SOHAN",21);
INSERT INTO student VALUES(2,"MOHAN",22);
SHOW DATABASES;
SHOW TABLES;
INSERT INTO student 
(student_id,name,age)
VALUES
(3,"ROHAN",21),
(4,"SURYA",22),
(5,"MONA",23);
SELECT * FROM student;
CREATE DATABASE company_xyz;
USE company_xyz;
CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);
INSERT INTO employee_info
(id,name,salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);
SELECT* FROM employee_info;
USE college;
CREATE TABLE student_info(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student_info
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");
SELECT*FROM student_info;
SELECT DISTINCT grade 
FROM student_info;
SELECT COUNT(rollno)
FROM student_info;
-- SELECT AVG(marks)                                     Aggregate Function
-- SELECT MAX(marks)
-- SELECT MIN(marks)
-- ORDER BY marks DESC;                                    ASC                
-- WHERE city NOT IN ("Delhi","Mumbai"); 
-- LIMIT 2;
-- WHERE city IN ("Delhi","Mumbai");  
-- WHERE marks BETWEEN 70 AND 90;  
-- WHERE marks > 80 AND city="MUMBAI";                 WHERE CLAUSE 
-- WHERE marks+10 >100;
USE College;
SELECT name,COUNT(rollno)
FROM student_info
GROUP BY name;
SELECT city,AVG(marks)
FROM student_info
GROUP BY city
HAVING AVG(marks)>70                                             -- Condition on Group
ORDER BY AVG(marks) DESC;
SELECT city,COUNT(rollno)
FROM student_info
GROUP BY city
HAVING MAX(marks)>90
ORDER BY city;
SET SQL_SAFE_UPDATES=0;
UPDATE student_info
SET grade="O"
WHERE grade="A";
SELECT*FROM student_info;
SET SQL_SAFE_UPDATES=0;
UPDATE student_info
SET grade="L"
WHERE grade="F";
SELECT*FROM student_info;
DELETE FROM student_info
WHERE marks<33;
SELECT*FROM student_info;
ALTER TABLE student_info
ADD COLUMN ages INT NOT NULL DEFAULT 19;
ALTER TABLE student_info
DROP COLUMN age;
ALTER TABLE student_info
RENAME TO student_infos;
SELECT*FROM student_infos;








