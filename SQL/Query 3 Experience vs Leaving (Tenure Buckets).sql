SELECT 
    CASE 
        WHEN Total_Experience_Years <= 2 THEN 'Entry-Level (0-2 Yrs)'
        WHEN Total_Experience_Years BETWEEN 3 AND 7 THEN 'Mid-Level (3-7 Yrs)'
        ELSE 'Senior (8+ Yrs)'
    END AS Experience_Bucket,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
FROM it_employee_attrition
GROUP BY 
    CASE 
        WHEN Total_Experience_Years <= 2 THEN 'Entry-Level (0-2 Yrs)'
        WHEN Total_Experience_Years BETWEEN 3 AND 7 THEN 'Mid-Level (3-7 Yrs)'
        ELSE 'Senior (8+ Yrs)'
    END
ORDER BY Attrition_Rate_Percent DESC;