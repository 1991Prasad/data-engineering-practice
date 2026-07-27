-- link: https://leetcode.com/problems/department-top-three-salaries/

/* Write your T-SQL query statement below */
select Department, Employee,Salary from
(
select  a.name as Employee, a.salary as Salary, b.name as Department,
DENSE_RANK()over(partition by b.name order by a.salary desc)  as Rn
from Employee a 
left join Department b 
on a.departmentId = b.id
)A
where Rn <= 3