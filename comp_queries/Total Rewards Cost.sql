-- Total Rewards Cost for the Leadership Departments

SELECT
  e.Job_Title,
  ROUND(SUM(c.Annual_Base_EUR * (1 + c.Bonus_Target_Pct)),2) AS total_compensation
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
WHERE Department = 'Leadership'
GROUP BY
  1;