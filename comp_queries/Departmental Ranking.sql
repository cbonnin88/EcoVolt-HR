-- Departmental Ranking

SELECT
  e.Department,
  e.first_name,
  e.last_name,
  c.Annual_Base_EUR,
  RANK() OVER(PARTITION BY e.Department ORDER BY c.Annual_Base_EUR DESC) AS salary_rank
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
QUALIFY salary_rank = 1;