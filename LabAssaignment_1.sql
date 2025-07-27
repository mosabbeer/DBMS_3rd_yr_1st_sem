use lab_assaignment
#this is question one
CREATE TABLE student(
roll VARCHAR(15) PRIMARY KEY,
 name VARCHAR(20), 
 dept VARCHAR(20), 
 YEAR VARCHAR(10), 
 semester VARCHAR(10)
);
INSERT INTO student(roll, name, dept, year, semester) VALUES
('06543201','Rahim','BBA','2nd','1st'),
('06543202',	'Karim',	'ICE',	'2nd',	'1st'),
('06543203',	'Motin','CSE',	'1st',	'2nd'),
('05654456',	'Swadhin',	'CSE',	'1st',	'2nd'),
('05654457','Hena',	'BBA',	'4th',	'2nd'),
('05654458',	'Sohag',	'CSE',	'3rd',	'1st');
SELECT *FROM student

#creating second table
create table studentinfo (
Roll varchar(20) primary key,
Name varchar(100),
FatherName varchar(100),
Address varchar(100),
Mobile varchar(15)
);

insert into studentinfo (Roll, Name, FatherName, Address, Mobile) values
('06543201', 'Rahim', 'Ataur', 'Rajshahi', '01719201233'),
('06543202', 'Karim', 'Tareq', 'Dhaka', '01719202020'),
('06543203', 'Motin', 'Rahman', 'Khulna', '01719202678'),
('05654456', 'Swadhin', 'Fazlu', 'Rajshahi', '01719204564'),
('05654457', 'Hena', 'Rahman', 'Rajshahi', '01119212020'),
('05654458', 'Sohag', 'Fazlul', 'Natore', '01719202222');
SELECT *FROM studentinfo

#ans of question 3
SELECT name FROM student WHERE semester ='1st'
SELECT NAME FROM student WHERE semester='2nd'
SELECT NAME from student WHERE dept='CSE'
SELECT NAME from student WHERE roll ='06543201'
#ans of question 4
SELECT NAME, Address,Mobile
FROM studentinfo
WHERE FatherName='Rahman';

SELECT NAME, Address,Mobile
FROM studentinfo
WHERE Mobile = '01719202020';

SELECT Name, Address, Mobile 
FROM studentinfo 
WHERE Address = 'Rajshahi';

SELECT Name, Address, Mobile 
FROM studentinfo 
WHERE Address = 'Rajshahi' AND FatherName = 'Rahman';

SELECT Name, Address, Mobile 
FROM studentinfo 
WHERE Roll = '05654456';
