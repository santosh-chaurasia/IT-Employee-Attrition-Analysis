-- Create the database for this project
CREATE DATABASE IT_Employee_Attrition_DB;

-- Use the new database
USE IT_Employee_Attrition_DB;

-- Create the table 
CREATE TABLE it_employee_attrition (
    Employee_ID INT PRIMARY KEY,
    Department VARCHAR(20),
    Total_Experience_Years INT,
    Salary_LPA DECIMAL(5,2),
    Years_Since_Last_Promotion INT,
    Work_Mode VARCHAR(10),
    Distance_From_Home_KM INT,
    Overtime VARCHAR(3),
    Attrition VARCHAR(3)
);


SELECT COUNT(*) AS Total_Rows FROM it_employee_attrition;
