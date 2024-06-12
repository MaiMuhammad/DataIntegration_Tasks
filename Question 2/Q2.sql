Use University

--Create Tables 
CREATE TABLE Employee_Q2 (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Update_Date DATETime
);
CREATE TABLE Employee_Current (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Update_Date DATETime
);

CREATE TABLE Employee_History (
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    StartDate DATETime,
    EndDate DATETime
);

Create Table STG_Conf(
	TableName varchar(20),
	lastDate datetime
);

--Insert Data Into Source
INSERT INTO Employee_Q2 (ID, Name, City, Email, Update_Date)
VALUES
(1001, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2024-04-20'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2024-04-20'),
(1003, 'Asem', 'Cairo', 'asem@mail.com', '2024-04-20');


--Trigger to Update The Update_Date
CREATE TRIGGER trg_UpdateEmployee_Q2
ON Employee_Q2
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Email) OR UPDATE(City)
    BEGIN
        UPDATE Employee_Q2
        SET Update_Date = GETDATE()
        FROM Employee_Q2
        INNER JOIN inserted ON Employee_Q2.ID = inserted.ID;
    END;
END;


Delete From Employee_Q2
Delete From Employee_Current
Delete From Employee_History

--Test
Select * From Employee_Q2
Select * From Employee_Current
Select * From Employee_History

Update Employee_Q2
Set City = 'New Cairo'
Where ID = 1001

Update Employee_Q2
Set Email = 'nehal11@mail.com'
Where ID = 1002




