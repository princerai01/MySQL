CREATE DATABASE TEMP1 ;
DROP DATABASE TEMP1 ;


create database college ; 
create TABLE STUDEN (
id int primary key,
name varchar(50), );

Insert into studen (id,name) values
(101,'adam'),
(102,'bob'),
(103,'casey');

create TABLE course (
id int primary key,
course varchar(50), );

Insert into course (id,course)values
(102,'english'),
(105,'math'),
(103,'science'),
(107,'CS');

Select * from Studen
Select * from course

Select * from studen as a INNER JOIN course as b ON a.iD = b.id 
Select * from studen as a RIGHT JOIN course as b ON a.iD = b.id 
Select * from studen as a LEFT JOIN course as b ON a.iD = b.id UNION Select * from studen as a RIGHT JOIN course as b ON a.iD = b.id 
Select * from studen as a LEFT JOIN course as b ON a.iD = b.id WHERE b.id is null
Select * from studen as a RIGHT JOIN course as b ON a.iD = b.id WHERE a.id is null

create TABLE employee (
id int primary key,
name varchar(50),
manager_id INT
);

Insert into employee (id,name,manager_id)values
(101,'adam',103),
(102,'bob',104),
(103,'casey',null),
(104,'Donald',103);

Select * from employee

Seelct * FROM employee as a JOIN employee as b ON a.id = b.manager_id 
Select name from employee UNION Select name from employee 
Select name from employee UNION ALL Select name from employee 



create TABLE STUDENT (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(50),
city varchar(50),
);

CREATE TABLE DEPT (
id int primary key,
name varchar(50),
);
Insert into dept values
(101,'english'),
(102,'IT');

Select * from dept

Update Dept 
SET id= 111
where id=101

CREATE TABLE Teacher (
id int primary key,
name varchar(50),
dept_id INT
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

Insert into teacher values 
(101,'Adam',101),
(102,'Adam',102);

Select * from teacher


insert into student (rollno,name,marks,grade,city) values
(101,'Anil',78,'C','Pune'),
(102,'Bhumika',93,'A','Mumbai'),
(103,'chetan',85,'B','Mumbai'),
(104,'dhurv', 96,'A','Delhi'),
(105,'emanuel',12,'F','Delhi'),
(106,'farah',82,'B','Delhi');

Select name, marks from student 
Select * from student

Select Avg(Marks) from student
Select name from student WHERE marks> 74
Select name,marks from student WHERE marks> (Select Avg(Marks)from student)
Select rollno from student where rollno%2=0
Select name,rollno from student WHERE rollno IN (102,104,106)
Select name,rollno from student WHERE rollno IN (Select rollno from student where rollno%2=0)
Select MAX(Marks)from (Select* from student where city = 'Mumbai') As Temp

Create VIEW view1 AS
Select rollno,name,marks from student 

Select * from view1 where marks >90
Drop table VIEW1

ALTER Table Student 
Add age int NOT NULL Default 19;

Truncate Table Student

Select DISTINCT city from student
Select * from student WHERE marks > 80
Select * from student WHERE city = 'Mumbai'
Select * from student WHERE city = 'Mumbai' AND marks > 80
Select * from student WHERE city = 'Mumbai' OR marks > 80
Select * from student WHERE marks+10 > 100
Select * from student WHERE marks BETWEEN 80 AND 90
Select * from student WHERE city IN ('Delhi','Mumbai')
Select * from student WHERE city NOT IN ('Delhi','Mumbai')
Select * from student limit3
Select * from student ORDER BY marks ASC 
Select * from student ORDER BY marks DESC
Select max(marks) FROM student
Select avg(marks) FROM student
Select count(name) FROM student
Select city, count(rollno) FROM student GROUP BY city
Select city, avg(marks) FROM student GROUP BY city ORDER BY city
Select grade,count(rollno) FROM student GROUP BY grade ORDER BY grade DESC
Select city, count(rollno) FROM student GROUP BY city HAVING max(marks) >90
Select city FROM student WHERE grade = 'A' GROUP BY city HAVING max(marks) >=90

Update Student SET grade='O' WHERE grade='A'
Update Student SET marks=82 WHERE rollno=105
Update Student SET grade='B' WHERE marks between 80 AND 90
Update Student SET marks=marks+1
Update Student SET marks=12 WHERE rollno=105 
Select * from student
DELETE from Student WHERE marks <33