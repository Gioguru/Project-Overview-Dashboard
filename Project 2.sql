--Project Status

With project_status as (
Select 
project_id,
project_name,
project_budget,
'upcoming' as status
FROM [upcoming projects]
UNION ALL
Select 
project_id,
project_name,
project_budget,
'completed' as status
FROM completed_projects)

--big table
Select 
e.employee_id,
e.first_name,
e.last_name,
e.salary,
e.job_title,
d.Department_Name,
pa.project_id,
p.project_name,
p.status
From employees e
JOIN departments d
ON e.department_id = d.Department_ID
JOIN project_assignments pa
ON pa.employee_id = e.employee_id
JOIN project_status p
ON p.project_id = pa.project_id

