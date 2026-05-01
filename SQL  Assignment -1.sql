CREATE DATABASE Employee ;
USE Employee ;

Create Table Departments(
Department_ID INT,
Department_Name varchar(100)
);
Create Table Locations(
Location_Id Int,
Location varchar(30)

);
Rename Table Locations to Location;

Create Table Employees(
Employee_ID INT,
Employee_Name varchar(50),
Gender Enum ('M','F'),
Age INT,
Hire_Date Date,
Designation varchar(100),
Department_ID INT,
Location_ID INT,
Salary Decimal (10,2)
);
Alter Table Employees ADD COLUMN Email varchar (100);
Alter Table Employees Modify  Designation varchar(200);
Alter Table Employees DROP AGE ;
Alter Table Employees Rename column Hire_Date to Date_of_joining ;
Rename Table Departments to Departments_info;
Rename Table Location to Locations;
Truncate Table Employees;
Drop Database if exists Employee;
Alter Table Departments ADD Constraint PK_Department primary key (Department_id);
create table Locations(
Locations_ID int  Auto_INCREMENT PRIMARY KEY,
Location_name varchar (100) NOT NULL 
);
Alter Table locations 
ADD CONSTRAINT Locations_name UNIQUE (location_Name); 
Alter Table Employees Add Constraint pk_Employee Primary key(employee_id);
create table Employees(
Employee_ID int  PRIMARY KEY,
Employee_name varchar (100) NOT NULL,
Department varchar(50) 
Gender char(1) check(Gender IN ('M','F'))

);
Alter Table Employee  Add constraint chk_age check(Age>=18);

ALTER TABLE Employee
MODIFY Hire_Date DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id);

ALTER TABLE Employees
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    location_id INT,

    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    CONSTRAINT fk_location
    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

Select *
From Locations

Select*
from Employees



