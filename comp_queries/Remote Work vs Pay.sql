-- Remote Work vs Pay
-- Are remote employees under or over indexed on pay compared to Office employees

SELECT
  e.Remote_Type,
  ROUND(AVG(c.Annual_Base_EUR),2) AS avg_salary
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
GROUP BY
  1;