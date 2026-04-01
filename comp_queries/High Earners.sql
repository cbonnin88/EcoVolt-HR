-- High Earner
-- All employees in the T4 or T5 that earn more than the average salary of a T3 employee

SELECT
  first_name,
  last_name,
  Job_Level,
  Annual_Base_EUR
FROM `ecovolt-491810.ecovolt_comp.employees` AS e
JOIN `ecovolt-491810.ecovolt_comp.compensation` AS c
  ON e.Employee_ID = c.Employee_ID
WHERE e.Job_Level IN ('T4','T4')
  AND c.Annual_Base_EUR > (SELECT AVG(c.Annual_Base_EUR) FROM `ecovolt-491810.ecovolt_comp.compensation` AS c2
                                                         JOIN `ecovolt-491810.ecovolt_comp.employees` AS e2
                                                            ON c2.Employee_ID = e2.Employee_ID
                                                          WHERE e2.Job_Level = 'T3');