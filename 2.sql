SELECT
  p.name,
  sum(salary)
FROM developers d
  JOIN dev_projects pd ON pd.developer_id = d.id
  JOIN projects p ON pd.project_id = p.id
GROUP BY p.name
ORDER BY sum(salary) DESC
LIMIT 1