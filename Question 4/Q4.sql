Use University;

--Create Tables
CREATE TABLE Attendance_Device 
(
    id				smallint PRIMARY KEY,
    employee_id		smallint,
    finger_print_ts	datetime,
    in_out			varchar(3)
);

INSERT INTO Attendance_Device (id, employee_id, finger_print_ts, in_out) VALUES
	('1', '101', '2024-03-12 9:00:00', 'in'),
	('2', '101', '2024-03-12 10:00:00', 'in'),
	('3', '102', '2024-03-12 9:00:00', 'in'),
	('4', '103', '2024-03-12 11:00:00', 'in'),
	('5', '104', '2024-03-12 9:15:00', 'in'),
	('6', '105', '2024-03-12 10:00:00', 'in'),
	('7', '105', '2024-03-12 11:00:00', 'in'),
	('8', '105', '2024-03-12 11:30:00', 'in'),
	('9', '106', '2024-03-12 9:00:00', 'in'),
	('10', '107', '2024-03-12 9:00:00', 'in'),
	('11', '108', '2024-03-12 9:00:00', 'in'),
	('12', '101', '2024-03-12 9:00:00', 'out'),
	('13', '101', '2024-03-12 17:00:00', 'out'),
	('14', '101', '2024-03-12 19:00:00', 'out'),
	('15', '102', '2024-03-12 17:00:00', 'out'),
	('16', '103', '2024-03-12 17:00:00', 'out'),
	('17', '105', '2024-03-12 10:00:00', 'out'),
	('18', '105', '2024-03-12 11:00:00', 'out'),
	('19', '105', '2024-03-12 18:00:00', 'out'),
	('20', '106', '2024-03-12 19:00:00', 'out'),
	('21', '107', '2024-03-12 14:00:00', 'out'),
	('22', '108', '2024-03-12 17:00:00', 'out');

	

CREATE TABLE Employee_Attendance_Details (
    Att_Key SMALLINT IDENTITY(1,1) PRIMARY KEY,
    Emp_ID SMALLINT,
    Date DATE,
    Time_In TIME,
    Time_Out TIME,
    Worked_Hours INT,
    State VARCHAR(80)
);

select * from Attendance_Device
select * from Employee_Attendance_Details;

truncate table Attendance_Device
truncate table Employee_Attendance_Details;

