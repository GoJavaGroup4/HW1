SELECT
  customerName,
  companyName,
  MIN(projectCost)
FROM
  ((SELECT
      projects.name      AS projectName,
      SUM(projects.cost) AS projectCost,
      customers.name     AS customerName,
      companies.name     AS companyName
    FROM projects
      INNER JOIN projects_customers ON projects.id = projects_customers.project_id
      INNER JOIN customers ON customers.id = projects_customers.customers_id
      INNER JOIN project_company ON projects.id = project_company.project_id
      INNER JOIN companies ON companies.id = project_company.company_id

    GROUP BY companies.name, customers.name) AS Stat)

GROUP BY companyName








