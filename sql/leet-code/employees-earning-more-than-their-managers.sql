-- link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

/* Write your T-SQL query statement below */
select name as Employee from 
(select a.name,a.salary as emp_sal,b.salary as manager_sal 
from Employee a 
inner join Employee b 
on a.managerId = b.id)A
where emp_sal>manager_sal
