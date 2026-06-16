# Write your MySQL query statement below
WITH manager AS (
    SELECT id,name,salary FROM Employee
)
SELECT e.name as Employee
FROM Employee as e
INNER JOIN manager as m
ON e.managerId = m.id
WHERE e.salary > m.salary