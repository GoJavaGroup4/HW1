select sum(salary) from developers as dev
	left join dev_skills as dsk on dev.id=dsk.developer_id
    left join skills as sk on sk.developer_id=dsk.skills_id
    where sk.java=1
