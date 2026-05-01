Create Database Employee ;
USE Employee ;
Create Table Departments(
Department_id INT  ,
Department_Name varchar (100)
);
Drop Table Departments ;

Create Table Location(
Location_id int,
Location varchar (30)
);
Drop Table Location ;

Create Table Employees (
Employee_id int primary key  Auto_Increment ,
Employee_Name varchar(50),
Gender Enum("M","f"),
Age INT,
Hire_date date,
Designation varchar(100),
Department_id int ,
Location_Id int ,
Salary decimal (10,2)
)

Auto_increment = 11;
Drop Table Employees ;


Select * from Employees ;
Alter TABLE Employees 
add column Email varchar (100) ;

Alter table Employees 
modify column Designation varchar(150) ;

SHOW DATABASES ;
USE Employee ;


Alter Table Employees
Rename column hire_date to Date_of_Joinning ;
Select * from Employees ;

rename table Departments to Departments_info ;

Select * from Departments_info ;

Rename table Location to Locations  ;

Select * from Locations ;

Insert into Employees (Employee_Name , Gender,Age ,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "Karthi","M", 29, "2025-06-04", "Finance Analyst" , 1, 11, "7500.87","Sarah @gmail.com");
 Select * from Employees ;
update Employees
SET SALARY = 75000.87
WHERE Employee_id = 11 ;
Insert into Employees (Employee_Name , Gender ,Age ,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "varun ","M",24, "2024-11-20", "Data Analyst" , 5, 7, "65986.45","Sanj2024@gmail.com");
update Employees
SET Department_id = 2
WHERE Employee_id = 11 ;
Insert into Employees (Employee_Name , Gender,Age ,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
 values ("Kavitha ","F", 32,"2022-05-16", "Data Scientist " , 3, 15, "63842.05","Kav198$2024@gmail.com");
Insert into Employees (Employee_Name , Gender,Age ,Date_of_joinning,  Department_id , Location_id , salary , Email)
values ("Mani ","M", 36, "2015-06-07", 3, 2, "63401.24"," mani224@gmail.com")  ;
Insert into Employees(Employee_Name , Gender , Age,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
 values ("shreya ","F",  28,"2016-01-10", "Data Analyst  " , 5, 6, "58463.28","Shreya%24@gmail.com");
Insert into Employees (Employee_Name , Gender,Age ,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "Karunya ","F", 31 ,"2015-11-20", "Python Developer " , 1, 10, "53000.18","karun1658gmail.com");
Insert into Employees (Employee_Name , Gender,Age ,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "Alagu ","F",  29,"2013-01-24", "Data Scientist " , 3, 6, "53000.18","karun1658gmail.com");
Insert into Employees (Employee_Name , Gender , Age,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "Kannan","M", 33,"2013-01-24", "Python Developer " , 1, 9, "59000.00","kannan1985gmail.com");
Insert into Employees (Employee_Name , Gender , Age,Date_of_joinning, Designation, Department_id , Location_id , salary , Email)
Values ( "Mala ","F", 33,"2013-01-24", "Python Developer " , 1, 9, "59000.00","Mala8165gmail.com");


Select * from Departments_info ;
Insert into Departments_info (Department_id, Department_Name) 
values (2 , "Finance Analyst") ;
Insert into Departments_Info values (3, "Data analyst") ;
Insert into Departments_Info values (5, "Data Scientist") ;
Insert into Departments_Info values (1, "Python Developer ") ;


Select * from Locations ;
Insert into locations values (11, "chennai") ;
Insert into locations values (7, "coimbatore") ;
Insert into locations values (15, "Madurai") ;
Insert into locations values (2, "Bangaluru") ;
Insert into locations values (6, "Kerela") ;
Insert into locations values (10, "cochin") ;
Insert into locations values (9, "Mumbai") ;



 Select * from Employees ;
 Select Salary from Employees ;
  Select  Distinct Salary 
  from Employees ;
  
  Alter Table Employees 
  Rename column Age to Employee_AGE ; 
  
 Alter Table Employees 
  Rename column Salary to Employee_Salary ;
  
  Update  Employees 
  set Designation = "Data Scientist"
  Where Employee_id = 14 ;
  
  Select* from Employees 
  WHERE Employee_Salary > 55000
  AND Date_of_joinning ="2016-01-01" ;
  
  use Employee ;
SELECT Employee_id, Department_id,Employee_salary
FROM Employees
ORDER BY Department_id ASC, Employee_Salary DESC;

SELECT *
FROM Employees
WHERE YEAR(Date_of_joinning) = 2013
ORDER BY Date_of_Joinning  ASC
LIMIT 5;
  
 SELECT SUM(Employee_Salary) AS Total_Finance_Salary
FROM Employees
WHERE Designation = 'Finance';

SELECT SUM(Employee_Salary) AS Total_Data_Salary
FROM Employees
WHERE Designation = 'Data Analyst';


SELECT MIN(Employee_Age) AS Minimum_Age
FROM Employees;
 Select* from Employees ;
 
 SELECT Location_id, MAX(Employee_Salary) AS Max_Salary
FROM Employees
GROUP BY Location_id;

SELECT Designation, AVG(Employee_Salary) AS Average_Salary
FROM Employees
WHERE Designation LIKE '%Analyst%'
GROUP BY Designation;

SELECT Department_id, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department_id
HAVING COUNT(*) < 3;
 Select* from Employees ;
 
 SELECT Location_id, AVG(Employee_Age) AS Avg_Age
FROM Employees
WHERE Gender = 'F'
GROUP BY Location_id
HAVING AVG(Employee_Age) < 30;

SELECT A.Employee_Name, A.Designation, B.Department_Name
FROM Employees A
INNER JOIN Departments_info B
ON A.Department_id = B.Department_id;

Select * from Departments_info ;
Select * from Locations ;
 Select* from Employees ;

SELECT B.Department_Name, COUNT(A.Employee_id) AS Total_Employees
FROM Departments_info B
LEFT JOIN Employees A
ON B.Department_id = A.Department_id
GROUP BY B.Department_id, B.Department_Name;

SELECT C.Location, A.Employee_Name
FROM Locations C
LEFT JOIN Employees A
ON C.Location_id = A.Location_id;