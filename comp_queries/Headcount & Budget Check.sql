-- Headcount & Budget Check

SELECT
  e.Country,
  COUNT(*) AS headcount,
  ROUND(SUM(c.Annual_Base_EUR),2) AS total_payroll  
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
GROUP BY
  1
ORDER BY
  total_payroll DESC;