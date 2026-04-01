-- Performance vs. Pay Alignment 

SELECT
  e.first_name,
  e.last_name,
  c.Performance_Rating,
  ROUND((c.Annual_Base_EUR / c.Market_Midpoint_EUR),2) AS compta,
  CASE 
    WHEN c.Performance_Rating >= 4 AND (c.Annual_Base_EUR / c.Market_Midpoint_EUR) < 0.9 THEN 'Retain & Raise'
    WHEN c.Performance_Rating <= 2 AND (c.Annual_Base_EUR / c.Market_Midpoint_EUR) > 1.1 THEN 'Overpaid'
    ELSE 'Aligned'
  END AS action_status
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID