# DataWarehouse-Assignment
This Assignment consists of four tasks using MS SQL Server and SSIS.

## Task 1: Consume a REST API and Load Data to the Database
- Consume any REST API and extract specific fields from the response.
- Load the extracted fields into a database table named `University`.
## Task 2: Implement SCD Type 4
- Implement Slowly Changing Dimension (SCD) type 4 for the `Employee_Q2` table.
- Create two target tables: one for the current data and one for historical data.
- Read the source data using Incremental Load.
## Task 3: Load Data with Versioning
- Load data from `Employee_Q3` source table into a target table using versioning.
- Demonstrate versioning by running the ETL process multiple times within the same day and across different days.
## Task 4: Process Attendance Data
- Process attendance data from `Attendance_Device` and load it into `Employee_Attendance_Details`.
- Determine the state based on arrival time and work duration.
