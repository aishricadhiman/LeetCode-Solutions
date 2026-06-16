WITH dept_highest_salary AS(
    SELECT id,name,departmentId, salary,MAX(salary) 
    OVER (PARTITION BY departmentId) as highest_salary
    FROM Employee
)
SELECT d.name as Department , dh.name AS Employee, dh.salary as Salary
FROM dept_highest_salary as dh
LEFT JOIN department as d
ON dh.departmentId = d.id
Where dh.salary = dh.highest_salary
