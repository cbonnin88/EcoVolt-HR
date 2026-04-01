-- Salary Compressioin Analysis

WITH TenureGroups AS (
  SELECT
    E.Employee_ID,
    c.Annual_Base_EUR / c.Market_Midpoint_EUR AS compa,
    CASE
      WHEN Tenure_Years > 5 THEN 'Veteran'
      WHEN Tenure_Years BETWEEN 1 AND 4 THEN 'Mid-Level'
      ELSE 'New Hire'
    END AS group_type
  FROM `ecovolt-491810.ecovolt_comp.employees` AS e
  JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
    ON e.Employee_ID = c.Employee_ID
)
SELECT
  group_type,
  ROUND(AVG(compa),2) AS salary_compression
FROM TenureGroups
WHERE group_type IS NOT NULL
GROUP BY 
  1
ORDER BY
  1 DESC;