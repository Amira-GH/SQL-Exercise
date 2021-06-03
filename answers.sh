1- select * from students;
2-  select * from students where age > 30;
3- select * from students where age =30 and Gender = 'F';
4- select Points from students where name='Alex';
5- insert into students (Name,Age,Gender,Points) VALUES ('Amira',18,'F',500);
6- update students set Points = 450 where name='Basma';
7- update students set Points = 100 where name='Alex';


# create table graduates
CREATE TABLE graduates ( 
"ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 "Name" TEXT NOT NULL UNIQUE, 
 "Age" INTEGER,
 "Gender" TEXT, 
 "Points" INTEGER, 
 "Graduation" Text 
 )

1 & 2 - INSERT into graduates (name,Age,Gender,Points,Graduation) VALUES('Layal',18,'F',350,'08/09/2018')

3- DELETE from students where Name="Layal";

#JOINS

1- SELECT employees.Name, employees.Company, companies.Date
from employees
INNER JOIN companies
on employees.Company = companies.Name;

2- SELECT employees.Name
from employees
INNER JOIN companies
on employees.Company = companies.Name
WHERE companies.Date < 2000;

3- SELECT employees.Company
from employees
INNER JOIN companies
on employees.Company = companies.Name
WHERE employees.Role = "Graphic Designer";


# Count & Filter

1- SELECT name, max(Points) AS `cnt`
FROM students 
GROUP BY name
ORDER BY `cnt` DESC
LIMIT 3

2- SELECT avg(Points)
from students

3- SELECT count(name)
from students
where Points = 500

4- SELECT name FROM students
WHERE name LIKE '%s%'

5- SELECT * FROM students ORDER BY Points DESC;
