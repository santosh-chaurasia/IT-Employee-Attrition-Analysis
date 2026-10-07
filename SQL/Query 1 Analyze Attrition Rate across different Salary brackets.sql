-- Query 1 nalyze Attrition Rate across different Salary brackets
SELECT 
    CASE 
        WHEN Salary_LPA < 6.0 THEN 'Low (Below 6 LPA)'
        WHEN Salary_LPA BETWEEN 6.0 AND 12.0 THEN 'Medium (6-12 LPA)'
        ELSE 'High (Above 12 LPA)'
    END AS Salary_Category,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
FROM it_employee_attrition
GROUP BY 
    CASE 
        WHEN Salary_LPA < 6.0 THEN 'Low (Below 6 LPA)'
        WHEN Salary_LPA BETWEEN 6.0 AND 12.0 THEN 'Medium (6-12 LPA)'
        ELSE 'High (Above 12 LPA)'
    END
ORDER BY Attrition_Rate_Percent DESC;