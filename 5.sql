SELECT
  customers.name,
  companies.name,
  projects.cost
FROM customers
INNER JOIN projects_customers on customers.id = projects_customers.customers_id
INNER JOIN projects ON projects_customers.project_id = projects.id
INNER JOIN project_company ON projects.id = project_company.project_id
INNER JOIN companies ON project_company.company_id = companies.id
WHERE cost=(SELECT id
  FROM projects
  HAVING min(cost))
GROUP BY companies.name;








