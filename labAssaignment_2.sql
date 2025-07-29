USE lab_assaignment
#ans of question one
#creating table
CREATE TABLE employee(
emplyeee_name VARCHAR(15) PRIMARY KEY,
street VARCHAR(20),
city VARCHAR(20)
)
#maks the emplyeee_name column  as I made mistake  spelling
ALTER TABLE employee
change emplyeee_name employee_name VARCHAR(15);

CREATE TABLE works (
    employee_name VARCHAR(50),
    company_name VARCHAR(50),
    salary INT,
    FOREIGN KEY (employee_name) REFERENCES employee(employee_name)
);

#inserting the values
INSERT INTO employee VALUES
('Arif','51 upashahar','Rajshahi'),
('Sumon','52 east','Moynamati'),
('Sagor','Neemgachhi','Sirajgonj'),
('Abdul','Binodpur','Rajshahi'),
('Himesh','Nazrul avenue','Dhaka'),
('Amirul','Chawk bazar','Sylhet'),
('Sajib','99 north','Chittagong')
#checking all inserted values
SELECT * FROM employee
insert into works values
('sumon','agrani',12000),
('abdul','sonali',13000),
('himesh','agrani',6000),
('amirul','sonali',20000),
('sagor','sonali',8000),
('arif','janata',13000),
('sajib','janata',9000);

SELECT *FROM works

#answer of b
SELECT employee_name
FROM employee WHERE city='Rajshahi';

#answer of c
SELECT employee_name,street
FROM employee WHERE city='Rajshahi';

#ans of d
SELECT employee_name
FROM works WHERE company_name='Sonali';
SELECT employee_name
FROM works WHERE company_name='Agrani';
SELECT employee_name
FROM works WHERE company_name='Janata';
#ans of e
SELECT employee_name,salary
FROM works WHERE company_name='Sonali';
SELECT employee_name
FROM works WHERE company_name='Agrani';
SELECT employee_name
FROM works WHERE company_name='Janata';
#ans of f
SELECT employee_name
FROM works WHERE salary>12000;
SELECT employee_name
FROM works WHERE salary>=12000;
SELECT employee_name
FROM works WHERE salary <12000;
#ans of g
SELECT employee_name,company_name
FROM works WHERE salary>12000;
SELECT employee_name
FROM works WHERE salary>=12000;
SELECT employee_name
FROM works WHERE salary <12000;
#ans of h
SELECT e.employee_name,e.street,e.city
FROM employee e
JOIN works w ON e.employee_name=w.employee_name
WHERE w.company_name='Agrani';
#ans of i
SELECT e.employee_name,e.street,e.city
FROM employee e
JOIN works w ON e.employee_name=w.employee_name
WHERE w.salary>=10000;
#ans of j
SELECT e.employee_name, w.company_name, w.salary
FROM employee e
JOIN works w ON e.employee_name = w.employee_name
WHERE e.city = 'Rajshahi';
#ans of k
SELECT e.employee_name, e.street, e.city, w.company_name
FROM employee e
JOIN works w ON e.employee_name = w.employee_name
WHERE w.salary >= 10000;
#ans of l
SELECT e.employee_name, e.street, e.city
FROM employee e
JOIN works w ON e.employee_name = w.employee_name
WHERE w.company_name = 'Sonali' AND w.salary > 12000;
#ans of m
SELECT e.employee_name
FROM employee e
WHERE e.employee_name NOT IN (
SELECT employee_name FROM works
WHERE company_name='Sonali');
#ans to n
UPDATE employee
SET city='Natore'
WHERE employee_name='Arif';
SELECT *FROM employee
#ans of o
UPDATE works
SET salary = salary * 1.10
WHERE company_name = 'Agrani';
#ans of p
DELETE FROM works
WHERE employee_name = 'Sagor';

DELETE FROM employee
WHERE employee_name = 'Sagor';
#ans of q
ALTER TABLE works
ADD manager VARCHAR(50);
