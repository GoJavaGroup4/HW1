SELECT avg(salary) AS AverageSalary
FROM developers
  INNER JOIN dev_projects ON developers.id = dev_projects.developer_id
  INNER JOIN projects ON dev_projects.project_id = projects.id
WHERE cost = (SELECT cost
              FROM projects
               GROUP BY cost HAVING min(cost) LIMIT 1)





