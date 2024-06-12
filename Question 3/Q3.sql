
CREATE DATABASE Employee;

-- Switch to the newly created database
USE Employee;

-- Create the table Employee
CREATE TABLE Employee_Q3 (
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Schedule_Date DATE
);

-- Insert data into the Employee table
INSERT INTO Employee_Q3 (ID, Name, City, Email, Schedule_Date) VALUES
(1001, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2024-04-20'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2024-04-20'),
(1003, 'Asem', 'Cairo', 'asem@mail.com', '2024-04-20');

INSERT INTO Employee_Q3 (ID, Name, City, Email, Schedule_Date) VALUES
(1004, 'Asem', 'Cairo', 'asem@mail.com', '2024-04-20');

select * from Employee_Q3;
delete from Employee_Q3

-- Create the table Employee_Target_Q3 with additional columns
CREATE TABLE Employee_Target_Q3 (
    Emp_Key INT IDENTITY(1,1) PRIMARY KEY,
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Insert_Date DATE,
    Active_Flag INT,
    Version_No INT
);
drop table Employee_Target_Q3;

delete from Employee_Target_Q3;

select * from Employee_Target_Q3;

