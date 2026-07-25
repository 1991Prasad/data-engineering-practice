-- link: https://leetcode.com/problems/second-highest-salary/description/

select max(salary) as SecondHighestSalary 
from Employee 
where salary < (select max(salary) from Employee) 