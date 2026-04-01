-- Percentile Distribution

SELECT
  DISTINCT e.Country,
  ROUND(PERCENTILE_CONT(c.Annual_Base_EUR,0.9) OVER(PARTITION BY e.Country),2) AS p90_salary
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c 
  ON e.Employee_ID = c.Employee_ID;