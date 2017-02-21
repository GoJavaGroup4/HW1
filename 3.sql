SELECT sum(salary) FROM developers as dev
  LEFT JOIN dev_skills AS dsk ON dev.id = dsk.developer_id
  LEFT JOIN skills AS sk ON dsk.skills_id = sk.skill_id
WHERE sk.skill_description LIKE 'java';