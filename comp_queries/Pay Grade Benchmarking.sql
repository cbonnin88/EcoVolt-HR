-- Pay Grade Benchmarking
-- The average Compa-Ratio and average Bonus % for each Job Level (T1-T5)

SELECT
  e.Job_Level,
  ROUND(AVG(c.Annual_Base_EUR / c.Market_Midpoint_EUR),2) AS avg_compa_ratio,
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
GROUP BY  
  1
ORDER BY
  Job_Level;